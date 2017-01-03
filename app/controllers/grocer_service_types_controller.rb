class GrocerServiceTypesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_grocer_service_type, only: [:show, :edit, :update, :destroy]

  # GET /grocer_service_types
  # GET /grocer_service_types.json
  def index
    @grocer_service_types = GrocerServiceType.all
  end

  # GET /grocer_service_types/1
  # GET /grocer_service_types/1.json
  def show
  end

  # GET /grocer_service_types/new
  def new
    @grocer_service_type = GrocerServiceType.new
  end

  # GET /grocer_service_types/1/edit
  def edit
  end

  # POST /grocer_service_types
  # POST /grocer_service_types.json
  def create
    @grocer_service_type = GrocerServiceType.new(grocer_service_type_params)

    respond_to do |format|
      if @grocer_service_type.save
        format.html { redirect_to grocer_service_types_path, notice: 'Grocer service type was successfully created.' }
        format.json { render :show, status: :created, location: @grocer_service_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @grocer_service_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /grocer_service_types/1
  # PATCH/PUT /grocer_service_types/1.json
  def update
    respond_to do |format|
      if @grocer_service_type.update(grocer_service_type_params)
        format.html { redirect_to @grocer_service_type, notice: 'Grocer service type was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocer_service_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @grocer_service_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /grocer_service_types/1
  # DELETE /grocer_service_types/1.json
  def destroy
    @grocer_service_type.destroy
    respond_to do |format|
      format.html { redirect_to grocer_service_types_url, notice: 'Grocer service type was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocer_service_type
      @grocer_service_type = GrocerServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocer_service_type_params
      params.require(:grocer_service_type).permit(:name,:icon)
    end
end
