class RemovePriceFromFriendsCards < ActiveRecord::Migration
  def change
    remove_column :friends_cards, :price, :integer
  end
end
