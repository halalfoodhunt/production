class CreatePlacesMenusCategories < ActiveRecord::Migration
  def change
    create_table :places_menus_categories do |t|
      t.integer :place_id
      t.integer :places_menu_id

      t.timestamps null: false
    end
  end
end
