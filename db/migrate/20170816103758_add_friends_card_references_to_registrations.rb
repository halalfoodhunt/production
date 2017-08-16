class AddFriendsCardReferencesToRegistrations < ActiveRecord::Migration
  def change
    add_reference :registrations, :friends_card, index: true, foreign_key: true
  end
end
