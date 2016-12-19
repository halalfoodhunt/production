class AddRegionIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :region_id, :integer
  end
end
