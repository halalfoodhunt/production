class AddRegionIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :region_id, :integer
  end
end
