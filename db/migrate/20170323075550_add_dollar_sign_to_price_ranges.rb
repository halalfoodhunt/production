class AddDollarSignToPriceRanges < ActiveRecord::Migration
  def change
    add_column :price_ranges, :dollar_sign, :string
  end
end
