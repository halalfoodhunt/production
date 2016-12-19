class AddQualifyingTypeIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :qualifying_type_id, :integer
  end
end
