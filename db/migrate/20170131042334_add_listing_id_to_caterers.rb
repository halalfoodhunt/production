class AddListingIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :listing_id, :integer
  end
end
