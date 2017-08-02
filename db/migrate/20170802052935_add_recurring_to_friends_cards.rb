class AddRecurringToFriendsCards < ActiveRecord::Migration
  def change
    add_column :friends_cards, :recurring, :boolean
    add_column :friends_cards, :period, :string
    add_column :friends_cards, :cycles, :integer
  end
end
