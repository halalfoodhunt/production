class AddPriceRangeIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :price_range_id, :integer
  end
end
