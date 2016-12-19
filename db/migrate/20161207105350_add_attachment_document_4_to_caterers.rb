class AddAttachmentDocument4ToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :document_4
    end
  end

  def self.down
    remove_attachment :caterers, :document_4
  end
end
