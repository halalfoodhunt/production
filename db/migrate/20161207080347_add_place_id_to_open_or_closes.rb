class AddPlaceIdToOpenOrCloses < ActiveRecord::Migration
  def change
    add_column :open_or_closes, :place_id, :integer
  end
end
