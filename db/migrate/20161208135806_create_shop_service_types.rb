class CreateShopServiceTypes < ActiveRecord::Migration
  def change
    create_table :shop_service_types do |t|
      t.integer :online_grocer_id
      t.integer :grocer_service_type_id

      t.timestamps null: false
    end
  end
end
