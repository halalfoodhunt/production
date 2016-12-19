class AddAttachmentIconToCatererTypes < ActiveRecord::Migration
  def self.up
    change_table :caterer_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :caterer_types, :icon
  end
end
