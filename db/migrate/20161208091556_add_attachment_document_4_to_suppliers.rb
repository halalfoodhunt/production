class AddAttachmentDocument4ToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :document_4
    end
  end

  def self.down
    remove_attachment :suppliers, :document_4
  end
end
