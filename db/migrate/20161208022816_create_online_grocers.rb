class CreateOnlineGrocers < ActiveRecord::Migration
  def change
    create_table :online_grocers do |t|
      t.string :brand_name
      t.string :general_email
      t.text :contactable_hours
      t.string :general_contact_number
      t.string :website
      t.string :ordering_link
      t.string :facebook
      t.string :instagram
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.text :question_4
      t.text :question_5
      t.datetime :expiry_date
      t.text :friends_rewards_terms
      t.string :merchant_id
      t.boolean :draft, default: true
      t.boolean :verified, default: false

      t.timestamps null: false
    end
  end
end
