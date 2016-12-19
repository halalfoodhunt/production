class AddAttachmentIconToHighlights < ActiveRecord::Migration
  def self.up
    change_table :highlights do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :highlights, :icon
  end
end
