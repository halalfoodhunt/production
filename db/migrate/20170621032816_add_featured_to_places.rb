class AddFeaturedToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :featured, :boolean, default: false
  end
end
