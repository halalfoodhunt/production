class AddListingIdToFoodDeliveries < ActiveRecord::Migration
  def change
    add_column :food_deliveries, :listing_id, :integer
  end
end
