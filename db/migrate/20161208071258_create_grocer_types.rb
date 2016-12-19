class CreateGrocerTypes < ActiveRecord::Migration
  def change
    create_table :grocer_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
