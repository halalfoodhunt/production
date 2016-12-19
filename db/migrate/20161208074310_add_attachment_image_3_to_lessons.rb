class AddAttachmentImage3ToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :image_3
    end
  end

  def self.down
    remove_attachment :lessons, :image_3
  end
end
