class EstablishmentTypesController < ApplicationController
  before_action :set_establishment_type, only: [:show, :edit, :update, :destroy]

  # GET /establishment_types
  # GET /establishment_types.json
  def index
    @establishment_types = EstablishmentType.all
  end

  # GET /establishment_types/1
  # GET /establishment_types/1.json
  def show
  end

  # GET /establishment_types/new
  def new
    @establishment_type = EstablishmentType.new
  end

  # GET /establishment_types/1/edit
  def edit
  end

  # POST /establishment_types
  # POST /establishment_types.json
  def create
    @establishment_type = EstablishmentType.new(establishment_type_params)

    respond_to do |format|
      if @establishment_type.save
        format.html { redirect_to @establishment_type, notice: 'Establishment type was successfully created.' }
        format.json { render :show, status: :created, location: @establishment_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @establishment_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /establishment_types/1
  # PATCH/PUT /establishment_types/1.json
  def update
    respond_to do |format|
      if @establishment_type.update(establishment_type_params)
        format.html { redirect_to @establishment_type, notice: 'Establishment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @establishment_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @establishment_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /establishment_types/1
  # DELETE /establishment_types/1.json
  def destroy
    @establishment_type.destroy
    respond_to do |format|
      format.html { redirect_to establishment_types_url, notice: 'Establishment type was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establishment_type
      @establishment_type = EstablishmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def establishment_type_params
      params.require(:establishment_type).permit(:name,:icon)
    end
end
