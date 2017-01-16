class AddCatererIdToBanquetTypes < ActiveRecord::Migration
  def change
    add_column :banquet_types, :caterer_id, :integer
  end
end
