class AddAttachmentIconToLessonTypes < ActiveRecord::Migration
  def self.up
    change_table :lesson_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :lesson_types, :icon
  end
end
