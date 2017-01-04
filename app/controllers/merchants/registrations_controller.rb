class Merchants::RegistrationsController < Devise::RegistrationsController

	def sign_up_params
		params.require(:merchant).permit(:registered_business_name, :email, :password, :uen_roc_fhc, :contact_person_name, :contact_person_position, :office_number, :mobile_number, :office_mailing_address, :region_id)
	end
	
	def account_update_params
		params.require(:merchant).permit(:registered_business_name, :email, :password, :current_password, :uen_roc_fhc, :contact_person_name, :contact_person_position, :office_number, :mobile_number, :office_mailing_address, :logo, :region_id)
	end
	
	private
	
	def after_sign_up_path_for(resource)
    koudoku.pricing_path
	end

	
end