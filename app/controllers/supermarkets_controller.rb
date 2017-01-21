class SupermarketsController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_supermarket, only: [:show, :edit, :update, :destroy]

  # GET /supermarkets
  # GET /supermarkets.json
  def index
    @search = Supermarket.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @supermarkets = @search.result.where(draft: false)
    @qualifying_type = QualifyingType.all
    @hash = Gmaps4rails.build_markers(@supermarkets) do |supermarket, marker|
    marker.lat supermarket.latitude
    marker.lng supermarket.longitude
    marker.json({operating_address: supermarket.operating_address})
    marker.picture({
     "url" => "http://halalfoodhunt.com/friends/wp-content/uploads/2016/10/shadows-marker.png",
     "width" =>  52,
     "height" => 52})
    marker.infowindow render_to_string(:partial => "/layouts/infobox2", :locals => { :supermarket => supermarket})
  end
  respond_to do |format|
    format.html
    format.json { render json: @places }
  end
  end

  # GET /supermarkets/1
  # GET /supermarkets/1.json
  def show
  end

  # GET /supermarkets/new
  def new
    @current_merchant = current_merchant
    @supermarket = Supermarket.new
    7.times { @supermarket.opening_hours.build }
  end

  # GET /supermarkets/1/edit
  def edit
  end

  # POST /supermarkets
  # POST /supermarkets.json
  def create
    @supermarket = current_merchant.supermarkets.new(supermarket_params)

    respond_to do |format|
      if @supermarket.save
        format.html { redirect_to @supermarket, notice: 'Supermarket was successfully created.' }
        format.json { render :show, status: :created, location: @supermarket }
      else
        format.html { render :new }
        format.json { render json: @supermarket.errors, status: :unprocessable_entity }
      end
    end
    @supermarket.supermarket_highlight_ids = params[:supermarket][:supermarket_highlight_ids]
  end

  # PATCH/PUT /supermarkets/1
  # PATCH/PUT /supermarkets/1.json
  def update
    respond_to do |format|
      if @supermarket.update(supermarket_params)
        format.html { redirect_to @supermarket, notice: 'Supermarket was successfully updated.' }
        format.json { render :show, status: :ok, location: @supermarket }
      else
        format.html { render :edit }
        format.json { render json: @supermarket.errors, status: :unprocessable_entity }
      end
    end
    @supermarket.supermarket_highlight_ids = params[:supermarket][:supermarket_highlight_ids]
    7.times { @supermarket.opening_hours.build }
  end

  # DELETE /supermarkets/1
  # DELETE /supermarkets/1.json
  def destroy
    @supermarket.destroy
    respond_to do |format|
      format.html { redirect_to supermarkets_url, notice: 'Supermarket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def edit_multiple
  @supermarkets = Supermarket.friendly.find(params[:supermarket_ids])
  end

  def update_multiple
  @supermarkets = Supermarket.friendly.update(params[:supermarkets].keys, params[:supermarkets].values)
  @supermarkets.reject! { |p| p.errors.empty? }
  if @supermarkets.empty?
    redirect_to pages_supermarkets_path
  else
    render "edit_multiple"
  end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supermarket
      @supermarket = Supermarket.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supermarket_params
      params.require(:supermarket).permit(:brand_name, :general_email, :general_contact_number, :operating_address, :latitude, :longitude, :website, :ordering_link, :facebook, :instagram, :question_1, :question_2, :question_3, :question_4, :question_5, :expiry_date, :friends_rewards_terms, :draft, :verified, :friends_reward_id, :region_id, :location_id, :qualifying_type_id, :location_id, :price_range_id, :logo, :featured_image, :image, :image_2, :image_3, :image_4, :document_1, :document_2, :document_3, :document_4, supermarket_highlight_ids: [], :opening_hours_attributes => [:id, :opening, :closing, :day_id, :open_or_close_id])
    end
end