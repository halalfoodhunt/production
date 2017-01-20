class AddSupermarketIdToOpeningHours < ActiveRecord::Migration
  def change
    add_column :opening_hours, :supermarket_id, :integer
  end
end
