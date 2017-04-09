class AddPaymentMethodToFriendsCard < ActiveRecord::Migration
  def change
    add_column :friends_cards, :paypal, :boolean, default: false
    add_column :friends_cards, :direct_bank_transfer, :boolean, default: false
  end
end
