class AddFoodItemIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :food_item_id, :integer
  end
end
