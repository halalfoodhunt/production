class AddFriendsCodeToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :friends_code, :string
  end
end
