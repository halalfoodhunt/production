class CreateSupplierFeatures < ActiveRecord::Migration
  def change
    create_table :supplier_features do |t|
      t.integer :supplier_id
      t.integer :supplier_highlight_id

      t.timestamps null: false
    end
  end
end
