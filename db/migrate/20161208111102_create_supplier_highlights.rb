class CreateSupplierHighlights < ActiveRecord::Migration
  def change
    create_table :supplier_highlights do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
