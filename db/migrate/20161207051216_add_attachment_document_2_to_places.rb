class AddAttachmentDocument2ToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :places, :document_2
  end
end
