class AddAttachmentDocument4ToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :document_4
    end
  end

  def self.down
    remove_attachment :places, :document_4
  end
end
