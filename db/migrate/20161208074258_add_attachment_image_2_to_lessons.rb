class AddAttachmentImage2ToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :lessons, :image_2
  end
end
