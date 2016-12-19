class AddServiceTypeIdToEcommers < ActiveRecord::Migration
  def change
    add_column :ecommers, :service_type_id, :integer
  end
end
