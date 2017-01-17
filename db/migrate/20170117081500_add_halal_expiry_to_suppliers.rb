class AddHalalExpiryToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :halal_expiry, :datetime
  end
end
