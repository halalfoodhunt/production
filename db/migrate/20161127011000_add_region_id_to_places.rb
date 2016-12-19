class AddRegionIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :region_id, :integer
  end
end
