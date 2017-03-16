class AddFriendsCodeToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :friends_code, :string
  end
end
