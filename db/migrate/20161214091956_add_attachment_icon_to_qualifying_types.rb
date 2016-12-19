class AddAttachmentIconToQualifyingTypes < ActiveRecord::Migration
  def self.up
    change_table :qualifying_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :qualifying_types, :icon
  end
end
