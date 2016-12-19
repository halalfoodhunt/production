class AddAttachmentDocument2ToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :caterers, :document_2
  end
end
