class AddAttachmentImageToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :supermarkets, :image
  end
end
