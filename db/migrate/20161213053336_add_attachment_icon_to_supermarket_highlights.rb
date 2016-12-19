class AddAttachmentIconToSupermarketHighlights < ActiveRecord::Migration
  def self.up
    change_table :supermarket_highlights do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :supermarket_highlights, :icon
  end
end
