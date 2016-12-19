class AddRoleToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :role, :integer
  end
end
