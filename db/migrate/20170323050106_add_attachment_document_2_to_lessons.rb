class AddAttachmentDocument2ToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :lessons, :document_2
  end
end
