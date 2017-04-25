class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :friend_id
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
