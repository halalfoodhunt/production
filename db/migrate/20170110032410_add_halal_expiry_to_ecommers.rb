class AddHalalExpiryToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :halal_expiry, :datetime
  end
end
