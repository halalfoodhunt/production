class AddListingIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :listing_id, :integer
  end
end
