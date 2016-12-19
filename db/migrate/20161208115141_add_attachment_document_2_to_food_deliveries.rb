class AddAttachmentDocument2ToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :document_2
    end
  end

  def self.down
    remove_attachment :food_deliveries, :document_2
  end
end
