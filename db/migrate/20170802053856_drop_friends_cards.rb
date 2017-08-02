class DropFriendsCards < ActiveRecord::Migration
  def change
    drop_table :friends_cards
  end
end
