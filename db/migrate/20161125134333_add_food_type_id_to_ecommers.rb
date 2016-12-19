class AddFoodTypeIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :food_type_id, :integer
  end
end
