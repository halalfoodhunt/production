class CreateHalalfoodhuntSeos < ActiveRecord::Migration
  def change
    create_table :halalfoodhunt_seos do |t|
      t.text :meta_description

      t.timestamps null: false
    end
  end
end
