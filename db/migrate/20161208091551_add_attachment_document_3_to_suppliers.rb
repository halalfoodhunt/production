class AddAttachmentDocument3ToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :document_3
    end
  end

  def self.down
    remove_attachment :suppliers, :document_3
  end
end
