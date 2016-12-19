class CreateDishDeliveryTypes < ActiveRecord::Migration
  def change
    create_table :dish_delivery_types do |t|
      t.integer :food_delivery_type_id
      t.integer :food_delivery_id

      t.timestamps null: false
    end
  end
end
