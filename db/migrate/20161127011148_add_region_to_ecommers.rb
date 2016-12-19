class AddRegionToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :region_id, :integer
  end
end
