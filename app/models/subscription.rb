class Subscription < ActiveRecord::Base
  include Koudoku::Subscription
  
  belongs_to :merchant
  belongs_to :coupon
  
  after_commit :set_merchant_role
  
  def set_merchant_role
    merchant.role = Merchant.roles[plan.stripe_id]
    merchant.save
  end

end
