class AddFoodItemIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :food_item_id, :integer
  end
end
