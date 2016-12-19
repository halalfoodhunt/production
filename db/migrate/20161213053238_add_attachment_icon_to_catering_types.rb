class AddAttachmentIconToCateringTypes < ActiveRecord::Migration
  def self.up
    change_table :catering_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :catering_types, :icon
  end
end
