class AddDeliveryLocationIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :location_id, :integer
  end
end
