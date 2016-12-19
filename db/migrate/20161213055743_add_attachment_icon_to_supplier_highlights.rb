class AddAttachmentIconToSupplierHighlights < ActiveRecord::Migration
  def self.up
    change_table :supplier_highlights do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :supplier_highlights, :icon
  end
end
