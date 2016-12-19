class AddAttachmentIconToGrocerServiceTypes < ActiveRecord::Migration
  def self.up
    change_table :grocer_service_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :grocer_service_types, :icon
  end
end
