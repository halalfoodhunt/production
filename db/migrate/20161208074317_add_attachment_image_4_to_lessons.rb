class AddAttachmentImage4ToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :lessons, :image_4
  end
end
