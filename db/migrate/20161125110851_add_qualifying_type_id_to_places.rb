class AddQualifyingTypeIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :qualifying_type_id, :integer
  end
end
