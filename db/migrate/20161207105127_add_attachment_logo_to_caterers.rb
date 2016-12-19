class AddAttachmentLogoToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :caterers, :logo
  end
end
