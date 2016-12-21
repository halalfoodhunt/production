class AddSlugsToOnlineGrocers < ActiveRecord::Migration
  def change
    add_column :online_grocers, :slug, :string
    add_index :online_grocers, :slug, unique: true
  end
end
