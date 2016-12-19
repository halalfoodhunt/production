class CreateOpenOrCloses < ActiveRecord::Migration
  def change
    create_table :open_or_closes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
