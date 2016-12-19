class AddAttachmentDocument3ToEcommers < ActiveRecord::Migration
  def self.up
    change_table :ecommers do |t|
      t.attachment :document_3
    end
  end

  def self.down
    remove_attachment :ecommers, :document_3
  end
end
