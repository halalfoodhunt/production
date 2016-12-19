class AddAttachmentDocument1ToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :supermarkets, :document_1
  end
end
