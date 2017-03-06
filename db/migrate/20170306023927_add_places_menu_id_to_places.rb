class AddPlacesMenuIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :places_menu_id, :integer
  end
end
