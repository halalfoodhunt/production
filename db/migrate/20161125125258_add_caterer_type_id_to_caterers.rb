class AddCatererTypeIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :caterer_type_id, :integer
  end
end
