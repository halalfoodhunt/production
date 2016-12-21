class AddSlugsToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :slug, :string
    add_index :food_deliveries, :slug, unique: true
  end
end
