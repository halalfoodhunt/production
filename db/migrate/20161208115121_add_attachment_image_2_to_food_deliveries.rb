class AddAttachmentImage2ToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :food_deliveries, :image_2
  end
end
