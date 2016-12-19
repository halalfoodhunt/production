class AddDetailsToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :registered_business_name, :string
    add_column :merchants, :uen_roc_fhc, :string
    add_column :merchants, :contact_person_name, :string
    add_column :merchants, :contact_person_position, :string
    add_column :merchants, :office_number, :string
    add_column :merchants, :mobile_number, :string
    add_column :merchants, :office_mailing_address, :string
  end
end
