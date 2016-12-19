class AddCulinarySkillIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :culinary_skill_id, :integer
  end
end
