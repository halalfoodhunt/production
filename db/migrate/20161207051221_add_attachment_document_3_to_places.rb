class AddAttachmentDocument3ToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :document_3
    end
  end

  def self.down
    remove_attachment :places, :document_3
  end
end
