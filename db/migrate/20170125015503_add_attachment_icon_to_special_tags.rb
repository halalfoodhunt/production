class AddAttachmentIconToSpecialTags < ActiveRecord::Migration
  def self.up
    change_table :special_tags do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :special_tags, :icon
  end
end
