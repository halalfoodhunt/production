class AddCateringTypeIdToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :catering_type_id, :integer
  end
end
