class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.integer :product_type_id
      t.integer :product_id
      t.integer :supplier_id

      t.timestamps null: false
    end
  end
end
