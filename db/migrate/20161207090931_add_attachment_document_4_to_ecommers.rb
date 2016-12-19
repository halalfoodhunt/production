class AddAttachmentDocument4ToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :document_4
    end
  end

  def self.down
    remove_attachment :ecommers, :document_4
  end
end
