class AddAttachmentDocument2ToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :ecommers, :document_2
  end
end
