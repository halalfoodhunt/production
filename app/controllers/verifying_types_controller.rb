class VerifyingTypesController < ApplicationController
  before_action :set_verifying_type, only: [:show, :edit, :update, :destroy]

  # GET /verifying_types
  # GET /verifying_types.json
  def index
    @verifying_types = VerifyingType.all
  end

  # GET /verifying_types/1
  # GET /verifying_types/1.json
  def show
  end

  # GET /verifying_types/new
  def new
    @verifying_type = VerifyingType.new
  end

  # GET /verifying_types/1/edit
  def edit
  end

  # POST /verifying_types
  # POST /verifying_types.json
  def create
    @verifying_type = VerifyingType.new(verifying_type_params)

    respond_to do |format|
      if @verifying_type.save
        format.html { redirect_to @verifying_type, notice: 'Verifying type was successfully created.' }
        format.json { render :show, status: :created, location: @verifying_type }
      else
        format.html { render :new }
        format.json { render json: @verifying_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verifying_types/1
  # PATCH/PUT /verifying_types/1.json
  def update
    respond_to do |format|
      if @verifying_type.update(verifying_type_params)
        format.html { redirect_to @verifying_type, notice: 'Verifying type was successfully updated.' }
        format.json { render :show, status: :ok, location: @verifying_type }
      else
        format.html { render :edit }
        format.json { render json: @verifying_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verifying_types/1
  # DELETE /verifying_types/1.json
  def destroy
    @verifying_type.destroy
    respond_to do |format|
      format.html { redirect_to verifying_types_url, notice: 'Verifying type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verifying_type
      @verifying_type = VerifyingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verifying_type_params
      params.require(:verifying_type).permit(:name, :icon)
    end
end
