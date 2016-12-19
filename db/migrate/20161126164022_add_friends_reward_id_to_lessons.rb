class AddFriendsRewardIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :friends_reward_id, :integer
  end
end
