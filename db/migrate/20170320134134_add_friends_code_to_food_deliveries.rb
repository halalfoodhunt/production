class AddFriendsCodeToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :friends_code, :string
  end
end
