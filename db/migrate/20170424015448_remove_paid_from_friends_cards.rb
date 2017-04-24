class RemovePaidFromFriendsCards < ActiveRecord::Migration
  def change
    remove_column :friends_cards, :paid, :string
  end
end
