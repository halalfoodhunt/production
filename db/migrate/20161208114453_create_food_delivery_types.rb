class CreateFoodDeliveryTypes < ActiveRecord::Migration
  def change
    create_table :food_delivery_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
