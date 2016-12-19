class AddClassTypeIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :class_type_id, :integer
  end
end
