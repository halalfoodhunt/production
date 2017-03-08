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
    @search = Caterer.ransack(params[:q])
    @caterers = @search.result.where(draft: false)
  end

  # GET /caterers/new
  def new
    @current_merchant = current_merchant
    @caterer = Caterer.new(listing_id: params[:listing_id])
    5.times { @caterer.caterer_packages.build }
  end

  # GET /caterers/1/edit
  def edit
  end

  # POST /caterers
  # POST /caterers.json
  def create
    @caterer = current_merchant.caterers.new(caterer_params)

    respond_to do |format|
      if @caterer.save
        format.html { redirect_to @caterer, notice: 'Caterer was successfully created.' }
        format.json { render :show, status: :created, location: @caterer }
      else
        format.html { render :new }
        format.json { render json: @caterer.errors, status: :unprocessable_entity }
      end
    end
    @caterer.caterer_type_ids = params[:caterer][:caterer_type_ids]
    @caterer.cuisine_type_ids = params[:caterer][:cuisine_type_ids]
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
    @caterer.caterer_type_ids = params[:caterer][:caterer_type_ids]
    @caterer.cuisine_type_ids = params[:caterer][:cuisine_type_ids]
    5.times { @caterer.caterer_packages.build }
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
  
  def edit_multiple
  @caterers = Caterer.friendly.find(params[:caterer_ids])
  end

  def update_multiple
  @caterers = Caterer.friendly.update(params[:caterers].keys, params[:caterers].values)
  @caterers.reject! { |p| p.errors.empty? }
  if @caterers.empty?
    redirect_to pages_caterers_path
  else
    render "edit_multiple"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caterer
       @caterer = Caterer.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caterer_params
      params.require(:caterer).permit(:business_name, :general_contact_number, :contactable_hours, :general_email, :facebook, :instagram, :website, :question_1, :question_2, :delivery_link, :delivery_terms, :draft, :expiry_date, :halal_expiry, :friends_rewards_terms, :verified, :logo, :featured_image, :image, :image_2, :image_3, :image_4, :document_1, :document_2, :document_3, :document_4, :region_id, :caterer_type_id, :qualifying_type_id, :friends_reward_id, :listing_id, :price_range_id, cuisine_type_ids: [], caterer_type_ids: [], :caterer_packages_attributes => [:id, :name, :description, :minimum_pax, :price] )
    end
end
