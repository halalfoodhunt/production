class AddFriendsReferencesToRegistrations < ActiveRecord::Migration
  def change
    add_reference :registrations, :friend, index: true, foreign_key: true
  end
end
