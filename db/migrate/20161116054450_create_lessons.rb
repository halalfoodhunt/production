class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :brand_name
      t.string :general_contact_number
      t.string :general_email
      t.string :preferred_contact
      t.string :preferred_sign_up_method
      t.string :location_of_classes
      t.string :facebook
      t.string :instagram
      t.string :website
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.text :question_4
      t.boolean :draft, default: true
      t.datetime :expiry_date
      t.string :merchant_id
      t.text :friends_rewards_terms
      t.boolean :verified, default: false

      t.timestamps null: false
    end
  end
end
