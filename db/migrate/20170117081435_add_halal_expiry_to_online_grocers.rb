class AddHalalExpiryToOnlineGrocers < ActiveRecord::Migration
  def change
    add_column :online_grocers, :halal_expiry, :datetime
  end
end
