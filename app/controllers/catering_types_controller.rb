class CateringTypesController < ApplicationController
  before_action :set_catering_type, only: [:show, :edit, :update, :destroy]

  # GET /catering_types
  # GET /catering_types.json
  def index
    @catering_types = CateringType.all
  end

  # GET /catering_types/1
  # GET /catering_types/1.json
  def show
  end

  # GET /catering_types/new
  def new
    @catering_type = CateringType.new
  end

  # GET /catering_types/1/edit
  def edit
  end

  # POST /catering_types
  # POST /catering_types.json
  def create
    @catering_type = CateringType.new(catering_type_params)

    respond_to do |format|
      if @catering_type.save
        format.html { redirect_to @catering_type, notice: 'Catering type was successfully created.' }
        format.json { render :show, status: :created, location: @catering_type }
      else
        format.html { render :new }
        format.json { render json: @catering_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catering_types/1
  # PATCH/PUT /catering_types/1.json
  def update
    respond_to do |format|
      if @catering_type.update(catering_type_params)
        format.html { redirect_to @catering_type, notice: 'Catering type was successfully updated.' }
        format.json { render :show, status: :ok, location: @catering_type }
      else
        format.html { render :edit }
        format.json { render json: @catering_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catering_types/1
  # DELETE /catering_types/1.json
  def destroy
    @catering_type.destroy
    respond_to do |format|
      format.html { redirect_to catering_types_url, notice: 'Catering type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catering_type
      @catering_type = CateringType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catering_type_params
      params.require(:catering_type).permit(:name,:icon)
    end
end
