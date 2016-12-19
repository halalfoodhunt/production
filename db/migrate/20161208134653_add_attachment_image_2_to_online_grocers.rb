class AddAttachmentImage2ToOnlineGrocers < ActiveRecord::Migration
  def self.up
    change_table :online_grocers do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :online_grocers, :image_2
  end
end
