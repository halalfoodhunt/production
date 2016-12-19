class AddAttachmentImage2ToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :ecommers, :image_2
  end
end
