class OnlineGrocersController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_online_grocer, only: [:show, :edit, :update, :destroy]

  # GET /online_grocers
  # GET /online_grocers.json
  def index
    @search = OnlineGrocer.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @online_grocers = @search.result.where(draft: false)
    @qualifying_type = QualifyingType.all
  end

  # GET /online_grocers/1
  # GET /online_grocers/1.json
  def show
  end

  # GET /online_grocers/new
  def new
    @current_merchant = current_merchant
    @online_grocer = OnlineGrocer.new
  end

  # GET /online_grocers/1/edit
  def edit
  end

  # POST /online_grocers
  # POST /online_grocers.json
  def create
    @online_grocer = current_merchant.online_grocers.new(online_grocer_params)

    respond_to do |format|
      if @online_grocer.save
        format.html { redirect_to @online_grocer, notice: 'Online grocer was successfully created.' }
        format.json { render :show, status: :created, location: @online_grocer }
      else
        format.html { render :new }
        format.json { render json: @online_grocer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /online_grocers/1
  # PATCH/PUT /online_grocers/1.json
  def update
    respond_to do |format|
      if @online_grocer.update(online_grocer_params)
        format.html { redirect_to @online_grocer, notice: 'Online grocer was successfully updated.' }
        format.json { render :show, status: :ok, location: @online_grocer }
      else
        format.html { render :edit }
        format.json { render json: @online_grocer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /online_grocers/1
  # DELETE /online_grocers/1.json
  def destroy
    @online_grocer.destroy
    respond_to do |format|
      format.html { redirect_to online_grocers_url, notice: 'Online grocer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def edit_multiple
  @online_grocers = OnlineGrocer.friendly.find(params[:online_grocer_ids])
  end

  def update_multiple
  @online_grocers = OnlineGrocer.friendly.update(params[:online_grocers].keys, params[:online_grocers].values)
  @online_grocers.reject! { |p| p.errors.empty? }
  if @online_grocers.empty?
    redirect_to pages_online_grocers_path
  else
    render "edit_multiple"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_online_grocer
      @online_grocer = OnlineGrocer.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def online_grocer_params
      params.require(:online_grocer).permit(:brand_name, :general_email, :location_id, :region_id, :qualifying_type_id, :price_range_id, :contactable_hours, :general_contact_number, :website, :ordering_link, :facebook, :instagram, :question_1, :question_2, :question_3, :question_4, :question_5, :expiry_date, :halal_expiry, :friends_rewards_terms, :draft, grocer_type_ids: [], grocer_service_type_ids: [])
    end
end
