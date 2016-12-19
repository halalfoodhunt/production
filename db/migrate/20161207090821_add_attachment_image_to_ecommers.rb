class AddAttachmentImageToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :ecommers, :image
  end
end
