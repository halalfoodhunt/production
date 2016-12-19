class CreateDishTypes < ActiveRecord::Migration
  def change
    create_table :dish_types do |t|
      t.integer :food_type_id
      t.integer :ecommer_id

      t.timestamps null: false
    end
  end
end
