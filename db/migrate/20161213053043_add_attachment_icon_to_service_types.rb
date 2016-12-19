class AddAttachmentIconToServiceTypes < ActiveRecord::Migration
  def self.up
    change_table :service_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :service_types, :icon
  end
end
