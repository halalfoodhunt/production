class CreateEcommers < ActiveRecord::Migration
  def change
    create_table :ecommers do |t|
      t.string :business_name
      t.string :general_contact_number
      t.string :general_email
      t.string :operating_address
      t.string :facebook
      t.string :instagram
      t.string :website
      t.string :preferred_contact
      t.string :preferred_order_method
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.text :question_4
      t.text :question_5
      t.string :delivery_link
      t.boolean :draft, default: true
      t.datetime :expiry_date
      t.string :merchant_id
      t.text :friends_rewards_terms
      t.boolean :verified, default: false

      t.timestamps null: false
    end
  end
end
