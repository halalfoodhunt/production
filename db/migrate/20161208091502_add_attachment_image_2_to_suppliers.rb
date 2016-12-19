class AddAttachmentImage2ToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :suppliers, :image_2
  end
end
