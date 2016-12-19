class AddAttachmentFeaturedImageToOnlineGrocers < ActiveRecord::Migration
  def self.up
    change_table :online_grocers do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :online_grocers, :featured_image
  end
end
