class AddAttachmentImage3ToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :image_3
    end
  end

  def self.down
    remove_attachment :suppliers, :image_3
  end
end
