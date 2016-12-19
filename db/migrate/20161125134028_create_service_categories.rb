class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
      t.integer :service_type_id
      t.integer :ecommer_id

      t.timestamps null: false
    end
  end
end
