class AddFoodDeliveryIdToMenuTypes < ActiveRecord::Migration
  def change
    add_column :menu_types, :food_delivery_id, :integer
  end
end
