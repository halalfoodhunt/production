class AddAttachmentImageToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :food_deliveries, :image
  end
end
