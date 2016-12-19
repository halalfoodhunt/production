class CreateCatererPackages < ActiveRecord::Migration
  def change
    create_table :caterer_packages do |t|
      t.string :name
      t.text :description
      t.integer :minimum_pax
      t.decimal :price, :precision => 8, :scale => 2


      t.timestamps null: false
    end
  end
end
