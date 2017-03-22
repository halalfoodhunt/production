class FoodDeliveriesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_food_delivery, only: [:show, :edit, :update, :destroy]

  # GET /food_deliveries
  # GET /food_deliveries.json
  def index
    @search = FoodDelivery.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @food_deliveries = @search.result.where(draft: false)
    @qualifying_type = QualifyingType.all
  end

  # GET /food_deliveries/1
  # GET /food_deliveries/1.json
  def show
  end

  # GET /food_deliveries/new
  def new
    @current_merchant = current_merchant
    @listing = Listing.all.order('created_at DESC').limit(1)
    @food_delivery = FoodDelivery.new(listing_id: params[:listing_id])
  end

  # GET /food_deliveries/1/edit
  def edit
  end

  # POST /food_deliveries
  # POST /food_deliveries.json
  def create
    @food_delivery = current_merchant.food_deliveries.new(food_delivery_params)

    respond_to do |format|
      if @food_delivery.save
        format.html { redirect_to @food_delivery, notice: 'Food delivery was successfully created.' }
        format.json { render :show, status: :created, location: @food_delivery }
      else
        format.html { render :new }
        format.json { render json: @food_delivery.errors, status: :unprocessable_entity }
      end
    end
    @food_delivery.food_delivery_type_ids = params[:food_delivery][:food_delivery_type_ids]
    @food_delivery.food_item_ids = params[:food_delivery][:food_item_ids]
  end

  # PATCH/PUT /food_deliveries/1
  # PATCH/PUT /food_deliveries/1.json
  def update
    respond_to do |format|
      if @food_delivery.update(food_delivery_params)
        format.html { redirect_to @food_delivery, notice: 'Food delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_delivery }
      else
        format.html { render :edit }
        format.json { render json: @food_delivery.errors, status: :unprocessable_entity }
      end
    end
    @food_delivery.food_delivery_type_ids = params[:food_delivery][:food_delivery_type_ids]
    @food_delivery.food_item_ids = params[:food_delivery][:food_item_ids]
  end

  # DELETE /food_deliveries/1
  # DELETE /food_deliveries/1.json
  def destroy
    @food_delivery.destroy
    respond_to do |format|
      format.html { redirect_to food_deliveries_url, notice: 'Food delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def edit_multiple
  @food_deliveries = FoodDelivery.friendly.find(params[:food_delivery_ids])
  end

  def update_multiple
  @food_deliveries = FoodDelivery.friendly.update(params[:food_deliveries].keys, params[:food_deliveries].values)
  @food_deliveries.reject! { |p| p.errors.empty? }
  if @food_deliveries.empty?
    redirect_to pages_food_deliveries_path
  else
    render "edit_multiple"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_delivery
       @food_delivery = FoodDelivery.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_delivery_params
      params.require(:food_delivery).permit(:brand_name, :general_email, :contactable_hours, :general_contact_number, :website, :ordering_link, :facefood_delivery, :instagram, :question_1, :question_2, :question_3, :question_4, :question_5, :expiry_date, :halal_expiry, :friends_rewards_terms, :merchant_id, :draft, :verified, :friends_reward_id, :listing_id, :region_id, :cuisine_type_id, :food_delivery_type_id, :price_range_id, :friends_code, :qualifying_type_id, :featured_image, :image, :image_2, :image_3, :image_4, :document_1, :document_2, :document_3, :document_4, :logo, food_item_ids: [])
    end
end
