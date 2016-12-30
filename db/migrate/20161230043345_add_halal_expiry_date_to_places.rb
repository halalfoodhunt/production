class AddHalalExpiryDateToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :halal_expiry, :datetime
  end
end
