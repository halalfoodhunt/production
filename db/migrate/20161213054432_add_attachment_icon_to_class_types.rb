class AddAttachmentIconToClassTypes < ActiveRecord::Migration
  def self.up
    change_table :class_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :class_types, :icon
  end
end
