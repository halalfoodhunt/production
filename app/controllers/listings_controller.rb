class ListingsController < ApplicationController
  before_action :authenticate_merchant!, only: [:index, :new, :edit, :create, :update, :destroy]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_filter :check_quota, only: [:index, :new, :create]

  # GET /listings
  # GET /listings.json
  def index
    @current_merchant = current_merchant
    @listings = Listing.all
    @places = Place.all
    @ecommers = Ecommer.all
    @caterers = Caterer.all
    @food_deliveries = FoodDelivery.all
    @suppliers = Supplier.all
    @supermarkets = Supermarket.all
    @lessons = Lesson.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @current_merchant = current_merchant
    @listing = Listing.new
    @listings = Listing.all
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = current_merchant.listings.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
    end
    
    def check_quota
    if current_merchant.free? && current_merchant.listings.count >= 1
      @quota_warning = "Maximum listings reached."
    end
    if current_merchant.basic? && current_merchant.listings.count >= 2
      @quota_warning = "Maximum listings reached."
    end
    if current_merchant.basic_plus? && current_merchant.listings.count >= 5
      @quota_warning = "Maximum listings reached."
    end
    if current_merchant.social? && current_merchant.listings.count >= 10
      @quota_warning = "Maximum listings reached."
    end
    end
end
