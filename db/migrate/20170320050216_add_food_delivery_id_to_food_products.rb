class AddFoodDeliveryIdToFoodProducts < ActiveRecord::Migration
  def change
    add_column :food_products, :food_delivery_id, :integer
  end
end
