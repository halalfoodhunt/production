class AddSlugsToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :slug, :string
    add_index :caterers, :slug, unique: true
  end
end
