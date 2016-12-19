class AddFriendsRewardIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :friends_reward_id, :integer
  end
end
