class AddCategorySeoToHalalfoodhuntSeos < ActiveRecord::Migration
  def change
    add_column :halalfoodhunt_seos, :places, :boolean, default: false
    add_column :halalfoodhunt_seos, :ecommers, :boolean, default: false
    add_column :halalfoodhunt_seos, :caterers, :boolean, default: false
    add_column :halalfoodhunt_seos, :online_grocers, :boolean, default: false
    add_column :halalfoodhunt_seos, :supermarkets, :boolean, default: false
    add_column :halalfoodhunt_seos, :suppliers, :boolean, default: false
    add_column :halalfoodhunt_seos, :academies, :boolean, default: false
    add_column :halalfoodhunt_seos, :food_deliveries, :boolean, default: false
  end
end
