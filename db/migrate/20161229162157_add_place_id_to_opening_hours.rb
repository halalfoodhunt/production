class AddPlaceIdToOpeningHours < ActiveRecord::Migration
  def change
    add_column :opening_hours, :place_id, :integer
  end
end
