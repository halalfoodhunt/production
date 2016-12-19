class AddAttachmentDocument2ToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :suppliers, :document_2
  end
end
