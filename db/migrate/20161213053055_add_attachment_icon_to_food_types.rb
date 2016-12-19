class AddAttachmentIconToFoodTypes < ActiveRecord::Migration
  def self.up
    change_table :food_types do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :food_types, :icon
  end
end
