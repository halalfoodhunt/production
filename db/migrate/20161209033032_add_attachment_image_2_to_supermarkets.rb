class AddAttachmentImage2ToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :supermarkets, :image_2
  end
end
