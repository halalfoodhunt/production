class AddAttachmentDocument3ToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :document_3
    end
  end

  def self.down
    remove_attachment :food_deliveries, :document_3
  end
end
