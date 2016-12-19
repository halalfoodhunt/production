class AddAttachmentDocument1ToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :places, :document_1
  end
end
