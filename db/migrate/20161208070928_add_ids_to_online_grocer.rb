class AddIdsToOnlineGrocer < ActiveRecord::Migration
  def change
    add_column :online_grocers, :region_id, :integer
    add_column :online_grocers, :location_id, :integer
    add_column :online_grocers, :price_range_id, :integer
    add_column :online_grocers, :qualifying_type_id, :integer
    add_column :online_grocers, :friends_reward_id, :integer
  end
end
