class AddAttachmentImage4ToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :places, :image_4
  end
end
