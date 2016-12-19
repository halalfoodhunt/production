class AddAttachmentDocument4ToOnlineGrocers < ActiveRecord::Migration
  def self.up
    change_table :online_grocers do |t|
      t.attachment :document_4
    end
  end

  def self.down
    remove_attachment :online_grocers, :document_4
  end
end
