class CreateProductSources < ActiveRecord::Migration
  def change
    create_table :product_sources do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
