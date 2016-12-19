class AddLocationIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :location_id, :integer
  end
end
