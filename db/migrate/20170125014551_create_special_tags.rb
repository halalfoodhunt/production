class CreateSpecialTags < ActiveRecord::Migration
  def change
    create_table :special_tags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
