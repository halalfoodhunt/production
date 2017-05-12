class BusinessAddOnsController < ApplicationController
  before_action :set_business_add_on, only: [:show, :edit, :update, :destroy]

  # GET /business_add_ons
  # GET /business_add_ons.json
  def index
    @business_add_ons = BusinessAddOn.all
  end

  # GET /business_add_ons/1
  # GET /business_add_ons/1.json
  def show
  end

  # GET /business_add_ons/new
  def new
    @business_add_on = BusinessAddOn.new
  end

  # GET /business_add_ons/1/edit
  def edit
  end

  # POST /business_add_ons
  # POST /business_add_ons.json
  def create
    @business_add_on = BusinessAddOn.new(business_add_on_params)

    respond_to do |format|
      if @business_add_on.save
        format.html { redirect_to @business_add_on, notice: 'Business add on was successfully created.' }
        format.json { render :show, status: :created, location: @business_add_on }
      else
        format.html { render :new }
        format.json { render json: @business_add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_add_ons/1
  # PATCH/PUT /business_add_ons/1.json
  def update
    respond_to do |format|
      if @business_add_on.update(business_add_on_params)
        format.html { redirect_to @business_add_on, notice: 'Business add on was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_add_on }
      else
        format.html { render :edit }
        format.json { render json: @business_add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_add_ons/1
  # DELETE /business_add_ons/1.json
  def destroy
    @business_add_on.destroy
    respond_to do |format|
      format.html { redirect_to business_add_ons_url, notice: 'Business add on was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_add_on
      @business_add_on = BusinessAddOn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_add_on_params
      params.require(:business_add_on).permit(:business_matching, :muslim_owner_collaboration, :business_advertising, :business_consultation, :legal_consulting, :digital_communication, :jumaiyah_exclusive, :offer_friends_rewards)
    end
end
