class AddLikeesCountToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :likees_count, :integer, :default => 0
  end
end
