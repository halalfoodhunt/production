class AddAttachmentIconToCulinarySkills < ActiveRecord::Migration
  def self.up
    change_table :culinary_skills do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :culinary_skills, :icon
  end
end
