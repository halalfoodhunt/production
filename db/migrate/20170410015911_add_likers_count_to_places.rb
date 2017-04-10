class AddLikersCountToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :likers_count, :integer, :default => 0
  end
end
