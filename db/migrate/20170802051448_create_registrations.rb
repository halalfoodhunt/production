class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :ic_number
      t.datetime :date_of_birth
      t.string :contact_number
      t.string :email
      t.string :instagram_account
      t.boolean :facebook_ads, default: false
      t.boolean :facebook_newsfeed, default: false
      t.boolean :facebook_video, default: false
      t.boolean :instagram, default: false
      t.datetime :expiry_date
      t.string :card_number
      t.boolean :processing, default: true
      t.boolean :pending, default: false
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
