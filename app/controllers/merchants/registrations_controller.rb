class Merchants::RegistrationsController < Devise::RegistrationsController

	def sign_up_params
		params.require(:merchant).permit(:registered_business_name, :email, :password, :uen_roc_fhc, :contact_person_name, :contact_person_position, :office_number, :mobile_number, :office_mailing_address, :region_id)
	end
	
	def account_update_params
		params.require(:merchant).permit(:registered_business_name, :email, :password, :uen_roc_fhc, :contact_person_name, :contact_person_position, :office_number, :mobile_number, :office_mailing_address, :logo, :region_id, :role)
	end
	
	private
	
	def after_sign_in_path_for(merchant)
  listings_path
  end
	
	def after_sign_up_path_for(merchant)
    edit_merchant_registration_path
	end

    def update_resource(resource, params)
      if params[:password].blank? && params[:password_confirmation].blank? && params[:current_password].blank?
      resource.update_without_password(params)
      else
        super
      end
    end
    
    def after_update_path_for(merchant)
      main_app.pricing_path
    end
  
    def new
    @plans = Plan.all
    super
  end
	
end