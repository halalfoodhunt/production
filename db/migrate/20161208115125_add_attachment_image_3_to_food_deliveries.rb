class AddAttachmentImage3ToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :image_3
    end
  end

  def self.down
    remove_attachment :food_deliveries, :image_3
  end
end
