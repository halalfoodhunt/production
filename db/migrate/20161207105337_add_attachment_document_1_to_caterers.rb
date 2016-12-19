class AddAttachmentDocument1ToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :caterers, :document_1
  end
end
