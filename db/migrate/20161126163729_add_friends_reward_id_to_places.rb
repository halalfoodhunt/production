class AddFriendsRewardIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :friends_reward_id, :integer
  end
end
