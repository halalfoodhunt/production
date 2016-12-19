class AddAttachmentImage4ToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :caterers, :image_4
  end
end
