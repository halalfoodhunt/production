class AddAttachmentLogoToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :lessons, :logo
  end
end
