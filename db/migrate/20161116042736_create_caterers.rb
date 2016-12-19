class CreateCaterers < ActiveRecord::Migration
  def change
    create_table :caterers do |t|
      t.string :business_name
      t.string :general_contact_number
      t.string :general_email
      t.string :operating_address
      t.string :facebook
      t.string :instagram
      t.string :website
      t.text :question_1
      t.string :delivery_link
      t.text :delivery_terms
      t.boolean :draft, default: true
      t.datetime :expiry_date
      t.string :merchant_id
      t.text :friends_rewards_terms
      t.boolean :verified, default: false

      t.timestamps null: false
    end
  end
end
