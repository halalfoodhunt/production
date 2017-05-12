class CreateBusinessAddOns < ActiveRecord::Migration
  def change
    create_table :business_add_ons do |t|
      t.boolean :business_matching
      t.boolean :muslim_owner_collaboration
      t.boolean :business_advertising
      t.boolean :business_consultation
      t.boolean :legal_consulting
      t.boolean :digital_communication
      t.boolean :jumaiyah_exclusive
      t.boolean :offer_friends_rewards

      t.timestamps null: false
    end
  end
end
