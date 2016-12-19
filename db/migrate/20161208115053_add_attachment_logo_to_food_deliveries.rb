class AddAttachmentLogoToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :food_deliveries, :logo
  end
end
