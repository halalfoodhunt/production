class AddSlugsToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :slug, :string
    add_index :ecommers, :slug, unique: true
  end
end
