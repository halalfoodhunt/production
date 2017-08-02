class CreateCardTransactions < ActiveRecord::Migration
  def change
    create_table :card_transactions do |t|
      t.string :action
      t.string :amount
      t.boolean :success
      t.string :authorization
      t.string :message
      t.text :params
      t.references :card, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
