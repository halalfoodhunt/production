class RegistrationsController < ApplicationController
  before_action :authenticate_friend!, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_registration, only: [:show, :edit, :update, :destroy]

  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
  end

  # GET /registrations/new
  def new
    @current_friend = current_friend
    @registration = Registration.new
    @registration.build_card
    @friends_card = FriendsCard.find_by id: params["friends_card_id"]
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  # POST /registrations.json
  def create
   @registration = current_friend.registration.new(registration_params)

   @registration.card.ip_address = request.remote_ip
    if @registration.save
      case params['payment_method']
        when "paypal"
          redirect_to @registration.paypal_url(registration_path(@registration))
        when "card"
          if @registration.card.purchase
            redirect_to registration_path(@registration), notice: @registration.card.card_transaction.message
          else
            redirect_to registration_path(@registration), alert: @registration.card.card_transaction.message
          end
      end
    else
      render :new
    end
  end
  
  protect_from_forgery except: [:hook]
  def hook
    params.permit! # Permit all Paypal input params
    status = params[:payment_status]
    if status == "Completed"
      @registration = Registration.find params[:invoice]
      @registration.update_attributes notification_params: params, status: status, transaction_id: params[:txn_id], purchased_at: Time.now
    end
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:name, :ic_number, :date_of_birth, :contact_number, :email, :instagram_account, :facebook_ads, :facebook_newsfeed, :facebook_video, :instagram, :friends_card_id, :expiry_date, :card_number, :processing, :pending, :completed, :address_1, :address_1, :city, :zipcode, :notes, card_attributes: [:first_name, :last_name, :card_type, :card_number, :card_verification, :card_expires_on] )
    end
end

