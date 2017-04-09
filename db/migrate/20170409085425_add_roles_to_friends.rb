class AddRolesToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :role, :integer
  end
end
