class AddProductSourceIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_source_id, :integer
  end
end
