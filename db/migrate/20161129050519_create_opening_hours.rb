class CreateOpeningHours < ActiveRecord::Migration
  def change
    create_table :opening_hours do |t|
      t.integer :day_id
      t.time :opening
      t.time :closing

      t.timestamps null: false
    end
  end
end
