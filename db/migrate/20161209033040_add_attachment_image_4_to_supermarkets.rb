class AddAttachmentImage4ToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :supermarkets, :image_4
  end
end
