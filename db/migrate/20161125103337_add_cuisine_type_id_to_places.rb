class AddCuisineTypeIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :cuisine_type_id, :integer
  end
end
