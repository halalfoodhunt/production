class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.integer :place_id
      t.integer :highlight_id

      t.timestamps null: false
    end
  end
end
