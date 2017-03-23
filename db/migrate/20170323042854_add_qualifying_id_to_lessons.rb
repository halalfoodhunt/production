class AddQualifyingIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :qualifying_type_id, :integer
  end
end
