class AddAttachmentDocument3ToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :document_3
    end
  end

  def self.down
    remove_attachment :lessons, :document_3
  end
end
