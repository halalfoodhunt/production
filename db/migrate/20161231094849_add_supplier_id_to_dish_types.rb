class AddSupplierIdToDishTypes < ActiveRecord::Migration
  def change
    add_column :dish_types, :supplier_id, :integer
  end
end
