class AddLocationIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :location_id, :integer
  end
end
