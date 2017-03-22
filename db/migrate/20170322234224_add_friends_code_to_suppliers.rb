class AddFriendsCodeToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :friends_code, :string
  end
end
