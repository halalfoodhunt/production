class AddLessonTypeIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_type_id, :integer
  end
end
