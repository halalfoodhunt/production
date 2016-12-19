class AddPriceRangeIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :price_range_id, :integer
  end
end
