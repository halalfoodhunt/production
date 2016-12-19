class AddAttachmentImageToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :suppliers, :image
  end
end
