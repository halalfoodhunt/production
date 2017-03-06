class CreatePlacesMenus < ActiveRecord::Migration
  def change
    create_table :places_menus do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
