class AddPagesToHalalfoodhuntSeo < ActiveRecord::Migration
  def change
    add_column :halalfoodhunt_seos, :about_us, :boolean, default: false
    add_column :halalfoodhunt_seos, :corporate_services, :boolean, default: false
    add_column :halalfoodhunt_seos, :caterers_friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :ecommers_friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :food_deliveries_friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :friends, :boolean, default: false
    add_column :halalfoodhunt_seos, :friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :getting_listed, :boolean, default: false
    add_column :halalfoodhunt_seos, :home, :boolean, default: false
    add_column :halalfoodhunt_seos, :lessons_friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :online_grocers_friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :places_friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :supermarkets_friends_rewards, :boolean, default: false
    add_column :halalfoodhunt_seos, :suppliers_friends_rewards, :boolean, default: false
  end
end
