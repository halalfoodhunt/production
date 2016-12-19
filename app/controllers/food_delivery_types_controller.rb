class FoodDeliveryTypesController < ApplicationController
  before_action :set_food_delivery_type, only: [:show, :edit, :update, :destroy]

  # GET /food_delivery_types
  # GET /food_delivery_types.json
  def index
    @food_delivery_types = FoodDeliveryType.all
  end

  # GET /food_delivery_types/1
  # GET /food_delivery_types/1.json
  def show
  end

  # GET /food_delivery_types/new
  def new
    @food_delivery_type = FoodDeliveryType.new
  end

  # GET /food_delivery_types/1/edit
  def edit
  end

  # POST /food_delivery_types
  # POST /food_delivery_types.json
  def create
    @food_delivery_type = FoodDeliveryType.new(food_delivery_type_params)

    respond_to do |format|
      if @food_delivery_type.save
        format.html { redirect_to @food_delivery_type, notice: 'Food delivery type was successfully created.' }
        format.json { render :show, status: :created, location: @food_delivery_type }
      else
        format.html { render :new }
        format.json { render json: @food_delivery_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_delivery_types/1
  # PATCH/PUT /food_delivery_types/1.json
  def update
    respond_to do |format|
      if @food_delivery_type.update(food_delivery_type_params)
        format.html { redirect_to @food_delivery_type, notice: 'Food delivery type was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_delivery_type }
      else
        format.html { render :edit }
        format.json { render json: @food_delivery_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_delivery_types/1
  # DELETE /food_delivery_types/1.json
  def destroy
    @food_delivery_type.destroy
    respond_to do |format|
      format.html { redirect_to food_delivery_types_url, notice: 'Food delivery type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_delivery_type
      @food_delivery_type = FoodDeliveryType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_delivery_type_params
      params.require(:food_delivery_type).permit(:name ,:icon)
    end
end
