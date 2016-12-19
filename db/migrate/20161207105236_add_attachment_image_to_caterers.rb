class AddAttachmentImageToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :caterers, :image
  end
end
