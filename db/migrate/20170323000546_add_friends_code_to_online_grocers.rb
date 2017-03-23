class AddFriendsCodeToOnlineGrocers < ActiveRecord::Migration
  def change
    add_column :online_grocers, :friends_code, :string
  end
end
