class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.integer :dining_type_id
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
