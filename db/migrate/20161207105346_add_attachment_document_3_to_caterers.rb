class AddAttachmentDocument3ToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :document_3
    end
  end

  def self.down
    remove_attachment :caterers, :document_3
  end
end
