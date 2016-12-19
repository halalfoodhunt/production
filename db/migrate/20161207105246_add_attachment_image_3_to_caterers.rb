class AddAttachmentImage3ToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :image_3
    end
  end

  def self.down
    remove_attachment :caterers, :image_3
  end
end
