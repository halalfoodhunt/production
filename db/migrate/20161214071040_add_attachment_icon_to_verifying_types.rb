class AddAttachmentIconToVerifyingTypes < ActiveRecord::Migration
  def self.up
    change_table :verifying_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :verifying_types, :icon
  end
end
