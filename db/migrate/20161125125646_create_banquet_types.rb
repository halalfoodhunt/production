class CreateBanquetTypes < ActiveRecord::Migration
  def change
    create_table :banquet_types do |t|
      t.integer :place_id
      t.integer :caterer_type_id

      t.timestamps null: false
    end
  end
end
