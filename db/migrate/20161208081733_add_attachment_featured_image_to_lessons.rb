class AddAttachmentFeaturedImageToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :lessons, :featured_image
  end
end
