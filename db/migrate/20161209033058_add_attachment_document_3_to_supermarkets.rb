class AddAttachmentDocument3ToSupermarkets < ActiveRecord::Migration
  def self.up
    change_table :supermarkets do |t|
      t.attachment :document_3
    end
  end

  def self.down
    remove_attachment :supermarkets, :document_3
  end
end
