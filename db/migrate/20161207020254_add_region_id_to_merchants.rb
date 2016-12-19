class AddRegionIdToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :region_id, :integer
  end
end
