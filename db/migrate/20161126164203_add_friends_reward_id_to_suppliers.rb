class AddFriendsRewardIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :friends_reward_id, :integer
  end
end
