class AddFeaturedToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :featured, :boolean, default: false
  end
end
