class AddPaidToFriendsCards < ActiveRecord::Migration
  def change
    add_column :friends_cards, :paid, :boolean, default: false
  end
end
