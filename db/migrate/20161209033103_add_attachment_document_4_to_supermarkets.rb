class AddAttachmentDocument4ToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :document_4
    end
  end

  def self.down
    remove_attachment :supermarkets, :document_4
  end
end
