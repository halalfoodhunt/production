class AddHalalExpiryToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :halal_expiry, :datetime
  end
end
