class AddAttachmentDocument1ToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :ecommers, :document_1
  end
end
