class AddFriendsRewardIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :friends_reward_id, :integer
  end
end
