class AddAttachmentImage2ToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :places, :image_2
  end
end
