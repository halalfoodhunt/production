class AddAttachmentImage4ToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :food_deliveries, :image_4
  end
end
