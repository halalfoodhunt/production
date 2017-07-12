class HalalfoodhuntSeosController < ApplicationController
  before_action :set_halalfoodhunt_seo, only: [:show, :edit, :update, :destroy]

  # GET /halalfoodhunt_seos
  # GET /halalfoodhunt_seos.json
  def index
    @halalfoodhunt_seos = HalalfoodhuntSeo.all
  end

  # GET /halalfoodhunt_seos/1
  # GET /halalfoodhunt_seos/1.json
  def show
  end

  # GET /halalfoodhunt_seos/new
  def new
    @halalfoodhunt_seo = HalalfoodhuntSeo.new
  end

  # GET /halalfoodhunt_seos/1/edit
  def edit
  end

  # POST /halalfoodhunt_seos
  # POST /halalfoodhunt_seos.json
  def create
    @halalfoodhunt_seo = HalalfoodhuntSeo.new(halalfoodhunt_seo_params)

    respond_to do |format|
      if @halalfoodhunt_seo.save
        format.html { redirect_to @halalfoodhunt_seo, notice: 'Halalfoodhunt seo was successfully created.' }
        format.json { render :show, status: :created, location: @halalfoodhunt_seo }
      else
        format.html { render :new }
        format.json { render json: @halalfoodhunt_seo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /halalfoodhunt_seos/1
  # PATCH/PUT /halalfoodhunt_seos/1.json
  def update
    respond_to do |format|
      if @halalfoodhunt_seo.update(halalfoodhunt_seo_params)
        format.html { redirect_to @halalfoodhunt_seo, notice: 'Halalfoodhunt seo was successfully updated.' }
        format.json { render :show, status: :ok, location: @halalfoodhunt_seo }
      else
        format.html { render :edit }
        format.json { render json: @halalfoodhunt_seo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /halalfoodhunt_seos/1
  # DELETE /halalfoodhunt_seos/1.json
  def destroy
    @halalfoodhunt_seo.destroy
    respond_to do |format|
      format.html { redirect_to halalfoodhunt_seos_url, notice: 'Halalfoodhunt seo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_halalfoodhunt_seo
      @halalfoodhunt_seo = HalalfoodhuntSeo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def halalfoodhunt_seo_params
      params.require(:halalfoodhunt_seo).permit(:meta_description, :about_us, :corporate_services, :caterers_friends_rewards, :ecommers_friends_rewards, :food_deliveries_friends_rewards, :friends, :boolean, :friends_rewards, :getting_listed, :home, :lessons_friends_rewards, :online_grocers_friends_rewards, :places_friends_rewards, :boolean, :supermarkets_friends_rewards, :suppliers_friends_rewards)
    end
end
