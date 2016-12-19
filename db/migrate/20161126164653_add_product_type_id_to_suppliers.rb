class AddProductTypeIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :product_type_id, :integer
  end
end
