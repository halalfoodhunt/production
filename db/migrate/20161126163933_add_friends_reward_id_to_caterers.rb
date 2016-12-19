class AddFriendsRewardIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :friends_reward_id, :integer
  end
end
