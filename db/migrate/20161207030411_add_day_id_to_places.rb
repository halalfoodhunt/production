class AddDayIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :day_id, :integer
  end
end
