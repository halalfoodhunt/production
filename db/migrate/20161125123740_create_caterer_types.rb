class CreateCatererTypes < ActiveRecord::Migration
  def change
    create_table :caterer_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
