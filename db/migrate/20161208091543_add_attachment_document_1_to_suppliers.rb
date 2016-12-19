class AddAttachmentDocument1ToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :suppliers, :document_1
  end
end
