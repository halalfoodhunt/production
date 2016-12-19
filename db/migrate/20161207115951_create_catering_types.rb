class CreateCateringTypes < ActiveRecord::Migration
  def change
    create_table :catering_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
