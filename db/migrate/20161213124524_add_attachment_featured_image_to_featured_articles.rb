class AddAttachmentFeaturedImageToFeaturedArticles < ActiveRecord::Migration
  def self.up
    change_table :featured_articles do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :featured_articles, :featured_image
  end
end
