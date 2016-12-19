class AddAttachmentImageToOnlineGrocers < ActiveRecord::Migration
  def self.up
    change_table :online_grocers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :online_grocers, :image
  end
end
