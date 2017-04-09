class CreateFriendsCards < ActiveRecord::Migration
  def change
    create_table :friends_cards do |t|
      t.string :name
      t.string :email
      t.string :ic_number
      t.datetime :date_of_birth
      t.string :contact_number
      t.text :shipping_address
      t.datetime :expiry_date
      t.boolean :gift
      t.string :paid

      t.timestamps null: false
    end
  end
end
