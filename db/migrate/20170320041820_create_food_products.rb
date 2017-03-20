class CreateFoodProducts < ActiveRecord::Migration
  def change
    create_table :food_products do |t|
      t.integer :ecommer_id
      t.integer :food_item_id

      t.timestamps null: false
    end
  end
end
