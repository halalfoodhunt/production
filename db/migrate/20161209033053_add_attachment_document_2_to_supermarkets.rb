class AddAttachmentDocument2ToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :supermarkets, :document_2
  end
end
