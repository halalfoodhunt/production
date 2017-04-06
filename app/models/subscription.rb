class Subscription < ActiveRecord::Base
  include Koudoku::Subscription
  
  belongs_to :merchant
  belongs_to :coupon
  
  def processing!

      # if their package level has changed ..
      if changing_plans?

        prepare_for_plan_change

        # and a customer exists in stripe ..
        if stripe_id.present?

          # fetch the customer.
          customer = Stripe::Customer.retrieve(self.stripe_id)

          # if a new plan has been selected
          if self.plan.present?

            # Record the new plan pricing.
            self.current_price = self.plan.price
            merchant.role = Merchant.roles[plan.stripe_id]
            merchant.save

            prepare_for_downgrade if downgrading?
            prepare_for_upgrade if upgrading?

            # update the package level with stripe.
            customer.update_subscription(:plan => self.plan.stripe_id, :prorate => Koudoku.prorate)

            finalize_downgrade! if downgrading?
            finalize_upgrade! if upgrading?

          # if no plan has been selected.
          else

            prepare_for_cancelation

            # Remove the current pricing.
            self.current_price = nil

            # delete the subscription.
            customer.cancel_subscription

            finalize_cancelation!

          end

        # when customer DOES NOT exist in stripe ..
        else
          
          # if a new plan has been selected
          if self.plan.present?

            # Record the new plan pricing.
            self.current_price = self.plan.price

            prepare_for_new_subscription
            prepare_for_upgrade

            begin
              raise Koudoku::NilCardToken, "Possible javascript error" if credit_card_token.empty?
              customer_attributes = {
                description: subscription_owner_description,
                email: subscription_owner_email,
                card: credit_card_token # obtained with Stripe.js
              }
              

              # If the class we're being included in supports coupons ..
              if respond_to? :coupon
                if coupon.present? and coupon.free_trial?
                  customer_attributes[:trial_end] = coupon.free_trial_ends.to_i
                end
              end

              customer_attributes[:coupon] = @coupon_code if @coupon_code

              # create a customer at that package level.
              customer = Stripe::Customer.create(customer_attributes)

              finalize_new_customer!(customer.id, plan.price)
              customer.update_subscription(:plan => self.plan.stripe_id, :prorate => Koudoku.prorate)

            rescue Stripe::CardError => card_error
              errors[:base] << card_error.message
              card_was_declined
              return false
            end

            # store the customer id.
            self.stripe_id = customer.id
            self.last_four = customer.cards.retrieve(customer.default_card).last4
            
            finalize_new_subscription!
            finalize_upgrade!

          else

            # This should never happen.

            self.plan_id = nil

            # Remove any plan pricing.
            self.current_price = nil

          end


        finalize_plan_change!
        end

      # if they're updating their credit card details.
      elsif self.credit_card_token.present?

        prepare_for_card_update

        # fetch the customer.
        customer = Stripe::Customer.retrieve(self.stripe_id)
        customer.card = self.credit_card_token
        customer.save

        # update the last four based on this new card.
        self.last_four = customer.cards.retrieve(customer.default_card).last4
        finalize_card_update!

      end
    end
  end
  
  
  def describe_difference(plan_to_describe)
    if plan.nil?
      if persisted?
        I18n.t('koudoku.plan_difference.upgrade')
      else
        if Koudoku.free_trial?
          I18n.t('koudoku.plan_difference.start_trial')
        else
          I18n.t('koudoku.plan_difference.upgrade')
        end
      end
    else
      if plan_to_describe.is_upgrade_from?(plan)
        I18n.t('koudoku.plan_difference.upgrade')
      else
        I18n.t('koudoku.plan_difference.downgrade')
      end
    end

end
