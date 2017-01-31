class AddListingIdToOnlineGrocers < ActiveRecord::Migration
  def change
    add_column :online_grocers, :listing_id, :integer
  end
end
