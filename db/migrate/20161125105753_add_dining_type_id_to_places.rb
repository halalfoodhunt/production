class AddDiningTypeIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :dining_type_id, :integer
  end
end
