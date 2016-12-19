class AddAttachmentIconToGrocerTypes < ActiveRecord::Migration
  def self.up
    change_table :grocer_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :grocer_types, :icon
  end
end
