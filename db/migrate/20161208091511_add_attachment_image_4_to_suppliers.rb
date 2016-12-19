class AddAttachmentImage4ToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :suppliers, :image_4
  end
end
