class AddAttachmentDocument1ToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :lessons, :document_1
  end
end
