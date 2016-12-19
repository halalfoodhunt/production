class CreatePriceRanges < ActiveRecord::Migration
  def change
    create_table :price_ranges do |t|
      t.string :price

      t.timestamps null: false
    end
  end
end
