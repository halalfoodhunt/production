class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.integer :lesson_id
      t.integer :class_type_id

      t.timestamps null: false
    end
  end
end
