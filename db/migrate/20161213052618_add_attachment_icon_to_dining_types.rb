class AddAttachmentIconToDiningTypes < ActiveRecord::Migration
  def self.up
    change_table :dining_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :dining_types, :icon
  end
end
