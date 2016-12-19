class AddEstablishmentTypeIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :establishment_type_id, :integer
  end
end
