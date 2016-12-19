class AddCuisineTypeIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :cuisine_type_id, :integer
  end
end
