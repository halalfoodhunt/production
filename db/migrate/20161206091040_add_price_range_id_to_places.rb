class AddPriceRangeIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :price_range_id, :integer
  end
end
