class AddAttachmentLogoToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :supermarkets, :logo
  end
end
