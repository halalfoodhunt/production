class CreateSupermarketHighlights < ActiveRecord::Migration
  def change
    create_table :supermarket_highlights do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
