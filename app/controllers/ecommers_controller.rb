class EcommersController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_ecommer, only: [:show, :edit, :update, :destroy]

  # GET /ecommers
  # GET /ecommers.json
  def index
    @search = Ecommer.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @ecommers = @search.result.where(draft: false)
    @qualifying_type = QualifyingType.all
  end

  # GET /ecommers/1
  # GET /ecommers/1.json
  def show
  end

  # GET /ecommers/new
  def new
    @current_merchant = current_merchant
    @ecommer = Ecommer.new(listing_id: params[:listing_id])
  end

  # GET /ecommers/1/edit
  def edit
  end

  # POST /ecommers
  # POST /ecommers.json
  def create
    @ecommer = current_merchant.ecommers.new(ecommer_params)

    respond_to do |format|
      if @ecommer.save
        format.html { redirect_to @ecommer, notice: 'Ecommer was successfully created.' }
        format.json { render :show, status: :created, location: @ecommer }
      else
        format.html { render :new }
        format.json { render json: @ecommer.errors, status: :unprocessable_entity }
      end
    end
    @ecommer.service_type_ids = params[:ecommer][:service_type_ids]
    @ecommer.food_type_ids = params[:ecommer][:food_type_ids]
    @ecommer.cuisine_type_ids = params[:ecommer][:cuisine_type_ids]
  end

  # PATCH/PUT /ecommers/1
  # PATCH/PUT /ecommers/1.json
  def update
    respond_to do |format|
      if @ecommer.update(ecommer_params)
        format.html { redirect_to @ecommer, notice: 'Ecommer was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecommer }
      else
        format.html { render :edit }
        format.json { render json: @ecommer.errors, status: :unprocessable_entity }
      end
    end
    @ecommer.service_type_ids = params[:ecommer][:service_type_ids]
    @ecommer.food_type_ids = params[:ecommer][:food_type_ids]
    @ecommer.cuisine_type_ids = params[:ecommer][:cuisine_type_ids]
  end

  # DELETE /ecommers/1
  # DELETE /ecommers/1.json
  def destroy
    @ecommer.destroy
    respond_to do |format|
      format.html { redirect_to ecommers_url, notice: 'Ecommer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def edit_multiple
  @ecommers = Ecommer.friendly.find(params[:ecommer_ids])
  end

  def update_multiple
  @ecommers = Ecommer.friendly.update(params[:ecommers].keys, params[:ecommers].values)
  @ecommers.reject! { |p| p.errors.empty? }
  if @ecommers.empty?
    redirect_to pages_ecommers_path
  else
    render "edit_multiple"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecommer
       @ecommer = Ecommer.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecommer_params
      params.require(:ecommer).permit(:business_name, :general_contact_number, :general_email, :operating_address, :facebook, :instagram, :website, :preferred_contact, :preferred_order_method, :question_1, :question_2, :question_3, :question_4, :question_5, :delivery_link, :draft, :expiry_date, :merchant_id, :friends_rewards_terms, :verified, :logo, :featured_image, :image, :image_2, :image_3, :halal_expiry, :image_4, :document_1, :document_2, :document_3, :document_4, :location_id, :region_id, :establishment_type_id, :qualifying_type_id, :friends_reward_id, :price_range_id, service_type_ids: [], food_type_ids: [], cuisine_type_ids: [] )
    end
end
