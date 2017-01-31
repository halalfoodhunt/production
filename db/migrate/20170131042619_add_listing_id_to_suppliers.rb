class AddListingIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :listing_id, :integer
  end
end
