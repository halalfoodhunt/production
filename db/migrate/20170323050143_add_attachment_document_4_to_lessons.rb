class AddAttachmentDocument4ToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :document_4
    end
  end

  def self.down
    remove_attachment :lessons, :document_4
  end
end
