class AddAttachmentDocument1ToOnlineGrocers < ActiveRecord::Migration
  def self.up
    change_table :online_grocers do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :online_grocers, :document_1
  end
end
