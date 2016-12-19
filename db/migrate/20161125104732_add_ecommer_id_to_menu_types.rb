class AddEcommerIdToMenuTypes < ActiveRecord::Migration
  def change
    add_column :menu_types, :ecommer_id, :integer
  end
end
