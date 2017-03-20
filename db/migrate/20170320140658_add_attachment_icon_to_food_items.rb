class AddAttachmentIconToFoodItems < ActiveRecord::Migration
  def self.up
    change_table :food_items do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :food_items, :icon
  end
end
