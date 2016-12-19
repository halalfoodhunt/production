class AddAttachmentImage3ToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :image_3
    end
  end

  def self.down
    remove_attachment :ecommers, :image_3
  end
end
