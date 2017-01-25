class CreateAdminTags < ActiveRecord::Migration
  def change
    create_table :admin_tags do |t|
      t.integer :place_id
      t.integer :special_tag_id

      t.timestamps null: false
    end
  end
end
