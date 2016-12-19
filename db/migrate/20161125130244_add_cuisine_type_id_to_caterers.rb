class AddCuisineTypeIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :cuisine_type_id, :integer
  end
end
