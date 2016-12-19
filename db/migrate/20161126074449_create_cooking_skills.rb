class CreateCookingSkills < ActiveRecord::Migration
  def change
    create_table :cooking_skills do |t|
      t.integer :lesson_id
      t.integer :culinary_skill_id

      t.timestamps null: false
    end
  end
end
