class CaterersController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_caterer, only: [:show, :edit, :update, :destroy]

  # GET /caterers
  # GET /caterers.json
  def index
    @search = Caterer.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @caterers = @search.result.where(draft: false)
    @qualifying_type = QualifyingType.all
  end

  # GET /caterers/1
  # GET /caterers/1.json
  def show
  end

  # GET /caterers/new
  def new
    @current_merchant = current_merchant
    @caterer = Caterer.new
    5.times do
      @caterer_package = @caterer.caterer_packages.build
    end
  end

  # GET /caterers/1/edit
  def edit
  end

  # POST /caterers
  # POST /caterers.json
  def create
    @caterer = current_merchant.caterer.new(caterer_params)

    respond_to do |format|
      if @caterer.save
        format.html { redirect_to @caterer, notice: 'Caterer was successfully created.' }
        format.json { render :show, status: :created, location: @caterer }
      else
        format.html { render :new }
        format.json { render json: @caterer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caterers/1
  # PATCH/PUT /caterers/1.json
  def update
    respond_to do |format|
      if @caterer.update(caterer_params)
        format.html { redirect_to @caterer, notice: 'Caterer was successfully updated.' }
        format.json { render :show, status: :ok, location: @caterer }
      else
        format.html { render :edit }
        format.json { render json: @caterer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caterers/1
  # DELETE /caterers/1.json
  def destroy
    @caterer.destroy
    respond_to do |format|
      format.html { redirect_to caterers_url, notice: 'Caterer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caterer
       @caterer = Caterer.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caterer_params
      params.require(:caterer).permit(:business_name, :general_contact_number, :general_email, :operating_address, :facebook, :instagram, :website, :question_1, :question_2, :delivery_link, :delivery_terms, :draft, :expiry_date, :merchant_id, :friends_rewards_terms, :verified, :logo, :featured_image, :image, :image_2, :image_3, :image_4, :document_1, :document_2, :document_3, :document_4, :region_id, :caterer_type_id, :qualifying_type_id, :friends_reward_id, :price_range_id, cuisine_type_ids: [], caterer_type_ids: [], :caterer_packages_attributes => [:id, :name, :description, :minimum_pax, :price] )
    end
end
