class CreateVerifyingTypes < ActiveRecord::Migration
  def change
    create_table :verifying_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
