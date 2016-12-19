class CreateSupermarketFeatures < ActiveRecord::Migration
  def change
    create_table :supermarket_features do |t|
      t.integer :supermarket_id
      t.integer :supermarket_highlight_id

      t.timestamps null: false
    end
  end
end
