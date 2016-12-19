class AddAttachmentIconToEstablishmentTypes < ActiveRecord::Migration
  def self.up
    change_table :establishment_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :establishment_types, :icon
  end
end
