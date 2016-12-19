class CreateCulinarySkills < ActiveRecord::Migration
  def change
    create_table :culinary_skills do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
