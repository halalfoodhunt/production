class AddAttachmentFeaturedImageToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :suppliers, :featured_image
  end
end
