class AddRegionIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :region_id, :integer
  end
end
