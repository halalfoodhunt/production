class AddFriendsCardIdToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :friends_card_id, :integer
  end
end
