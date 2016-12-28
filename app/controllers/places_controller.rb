class PlacesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  # GET /places.json
  def index
    @search = Place.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @places = @search.result.where(draft: false)
    @qualifying_type = QualifyingType.all
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
    marker.lat place.latitude
    marker.lng place.longitude
    marker.json({operating_address: place.operating_address})
    marker.picture({
     "url" => "http://halalfoodhunt.com/friends/wp-content/uploads/2016/10/shadows-marker.png",
     "width" =>  52,
     "height" => 52})
    marker.infowindow render_to_string(:partial => "/layouts/infobox", :locals => { :place => place})
  end
  respond_to do |format|
    format.html
    format.json { render json: @places }
  end
  end

  # GET /places/1
  # GET /places/1.json
  def show
    day = @place.days.build
  end

  # GET /places/new
  def new
    @current_merchant = current_merchant
    @place = Place.new
    7.times do
      @day = @place.days.build
    end
    7.times { @day.opening_hours.build }
  end

  # GET /places/1/edit
  def edit
    @current_merchant = current_merchant
    @place = Place.friendly.find(params[:id])
    7.times do
      @day = @place.days.build
    end
    7.times { @day.opening_hours.build }
  end

  # POST /places
  # POST /places.json
  def create
    @place = current_merchant.places.new(place_params)
    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
    @place.cuisine_type_ids = params[:place][:cuisine_type_ids]
    @place.highlight_ids = params[:place][:highlight_ids]
    @place.dining_type_ids = params[:place][:dining_type_ids]
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update

    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
    @place.cuisine_type_ids = params[:place][:cuisine_type_ids]
    @place.highlight_ids = params[:place][:highlight_ids]
    @place.dining_type_ids = params[:place][:dining_type_ids]
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def edit_multiple
  @places = Place.friendly.find(params[:place_ids])
  end

  def update_multiple
  @places = Place.friendly.update(params[:places].keys, params[:places].values)
  @places.reject! { |p| p.errors.empty? }
  if @places.empty?
    redirect_to pages_places_path
  else
    render "edit_multiple"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:business_name, :general_contact_number, :general_email, :operating_address, :facebook, :instagram, :website, :question_1, :question_2, :question_3, :question_4, :question_5, :question_6, :delivery_link, :reservation_link, :draft, :expiry_date, :latitude, :longitude, :logo, :friends_rewards_terms, :verified, :qualifying_type_id, :region_id, :location_id, :friends_reward_id, :place_type_id, :price_range_id, :featured_image, :image, :image_2, :image_3, :image_4, :document_1, :document_2, :document_3, :document_4, dining_type_ids: [], highlight_ids: [], cuisine_type_ids: [], 
        :days_attributes => [:id, :name,
        :opening_hours_attributes => [:id, :day_id, :opening, :closing]] )
    end
end