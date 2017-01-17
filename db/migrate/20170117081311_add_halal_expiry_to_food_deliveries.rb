class AddHalalExpiryToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :halal_expiry, :datetime
  end
end
