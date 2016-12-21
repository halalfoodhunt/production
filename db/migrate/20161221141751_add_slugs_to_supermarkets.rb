class AddSlugsToSupermarkets < ActiveRecord::Migration
  def change
    add_column :supermarkets, :slug, :string
    add_index :supermarkets, :slug, unique: true
  end
end
