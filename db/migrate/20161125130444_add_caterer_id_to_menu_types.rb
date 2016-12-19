class AddCatererIdToMenuTypes < ActiveRecord::Migration
  def change
    add_column :menu_types, :caterer_id, :integer
  end
end
