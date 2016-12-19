class AddAttachmentDocument1ToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :document_1
    end
  end

  def self.down
    remove_attachment :food_deliveries, :document_1
  end
end
