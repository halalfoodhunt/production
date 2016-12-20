class AddSlugToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :slug, :string
  end
end
