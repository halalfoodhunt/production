class AddAttachmentImage4ToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :ecommers, :image_4
  end
end
