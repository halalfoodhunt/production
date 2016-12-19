class AddAttachmentImage2ToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :caterers, :image_2
  end
end
