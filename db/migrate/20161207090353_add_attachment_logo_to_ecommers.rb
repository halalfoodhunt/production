class AddAttachmentLogoToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :ecommers, :logo
  end
end
