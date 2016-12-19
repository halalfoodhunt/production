class CreateMenuTypes < ActiveRecord::Migration
  def change
    create_table :menu_types do |t|
      t.integer :place_id
      t.integer :cuisine_type_id

      t.timestamps null: false
    end
  end
end
