class AddListingIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :listing_id, :integer
  end
end
