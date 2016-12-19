class AddAttachmentDocument2ToOnlineGrocers < ActiveRecord::Migration
  def self.up
    change_table :online_grocers do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :online_grocers, :document_2
  end
end
