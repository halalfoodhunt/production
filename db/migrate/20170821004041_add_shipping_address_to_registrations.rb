class AddShippingAddressToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :address_1, :string
    add_column :registrations, :address_2, :string
    add_column :registrations, :city, :string
    add_column :registrations, :zipcode, :integer
    add_column :registrations, :notes, :text
  end
end
