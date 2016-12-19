class AddAttachmentLogoToMerchants < ActiveRecord::Migration
  def self.up
    change_table :merchants do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :merchants, :logo
  end
end
