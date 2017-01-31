class AddListingIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :listing_id, :integer
  end
end
