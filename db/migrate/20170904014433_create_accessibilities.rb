class CreateAccessibilities < ActiveRecord::Migration
  def change
    create_table :accessibilities do |t|
      t.string :name
      t.integer :place_id
      t.integer :friend_id
      t.integer :score, default: 0

      t.timestamps null: false
    end
  end
end
