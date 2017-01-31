class AddListingIdToSupermarkets < ActiveRecord::Migration
  def change
    add_column :supermarkets, :listing_id, :integer
  end
end
