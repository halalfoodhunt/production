class AddAttachmentLogoToOnlineGrocers < ActiveRecord::Migration
  def self.up
    change_table :online_grocers do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :online_grocers, :logo
  end
end
