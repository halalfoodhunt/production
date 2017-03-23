class AddFriendsCodeToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :friends_code, :string
  end
end
