class AddQualifyingTypeIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :qualifying_type_id, :integer
  end
end
