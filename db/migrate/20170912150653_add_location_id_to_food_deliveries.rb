class AddLocationIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :delivery_location_id, :integer
  end
end
