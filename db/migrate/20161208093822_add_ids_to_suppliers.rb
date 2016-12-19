class AddIdsToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :price_range_id, :integer
    add_column :suppliers, :qualifying_type_id, :integer
    add_column :suppliers, :location_id, :integer
  end
end
