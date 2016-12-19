class AddAttachmentIconToCuisineTypes < ActiveRecord::Migration
  def self.up
    change_table :cuisine_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :cuisine_types, :icon
  end
end
