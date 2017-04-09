class AddPriceToFriendsCards < ActiveRecord::Migration
  def change
    add_column :friends_cards, :price, :integer
  end
end
