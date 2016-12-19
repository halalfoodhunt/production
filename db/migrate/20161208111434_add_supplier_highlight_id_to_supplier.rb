class AddSupplierHighlightIdToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :supplier_highlight_id, :integer
  end
end
