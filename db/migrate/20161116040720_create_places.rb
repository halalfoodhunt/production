class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :business_name
      t.string :general_contact_number
      t.string :general_email
      t.string :operating_address
      t.string :facebook
      t.string :instagram
      t.string :website
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.text :question_4
      t.text :question_5
      t.text :question_6
      t.string :delivery_link
      t.string :reservation_link
      t.boolean :draft, default: true
      t.datetime :expiry_date
      t.float :latitude
      t.float :longitude
      t.string :merchant_id
      t.text :friends_rewards_terms
      t.boolean :verified, default: false

      t.timestamps null: false
    end
  end
end
