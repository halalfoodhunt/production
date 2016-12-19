class AddAttachmentImage3ToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :image_3
    end
  end

  def self.down
    remove_attachment :supermarkets, :image_3
  end
end
