class AddCatererIdToCatererPackages < ActiveRecord::Migration
  def change
    add_column :caterer_packages, :caterer_id, :integer
  end
end
