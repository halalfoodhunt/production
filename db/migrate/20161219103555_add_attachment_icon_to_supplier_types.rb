class AddAttachmentIconToSupplierTypes < ActiveRecord::Migration
  def self.up
    change_table :supplier_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :supplier_types, :icon
  end
end
