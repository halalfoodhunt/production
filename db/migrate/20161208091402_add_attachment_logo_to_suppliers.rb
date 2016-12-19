class AddAttachmentLogoToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :suppliers, :logo
  end
end
