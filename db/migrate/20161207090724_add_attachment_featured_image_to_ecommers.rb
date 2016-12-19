class AddAttachmentFeaturedImageToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :ecommers, :featured_image
  end
end
