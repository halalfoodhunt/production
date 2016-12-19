class AddAttachmentIconToFoodDeliveryTypes < ActiveRecord::Migration
  def self.up
    change_table :food_delivery_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :food_delivery_types, :icon
  end
end
