class CreateTeachingTypes < ActiveRecord::Migration
  def change
    create_table :teaching_types do |t|
      t.integer :lesson_type_id
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
