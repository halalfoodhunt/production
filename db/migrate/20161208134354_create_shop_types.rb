class CreateShopTypes < ActiveRecord::Migration
  def change
    create_table :shop_types do |t|
      t.integer :grocer_type_id
      t.integer :online_grocer_id

      t.timestamps null: false
    end
  end
end
