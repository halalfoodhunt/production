class QualifyingTypesController < ApplicationController
  before_filter :is_admin?, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_qualifying_type, only: [:show, :edit, :update, :destroy]

  # GET /qualifying_types
  # GET /qualifying_types.json
  def index
    @qualifying_types = QualifyingType.all
  end

  # GET /qualifying_types/1
  # GET /qualifying_types/1.json
  def show
  end

  # GET /qualifying_types/new
  def new
    @qualifying_type = QualifyingType.new
  end

  # GET /qualifying_types/1/edit
  def edit
  end

  # POST /qualifying_types
  # POST /qualifying_types.json
  def create
    @qualifying_type = QualifyingType.new(qualifying_type_params)

    respond_to do |format|
      if @qualifying_type.save
        format.html { redirect_to @qualifying_type, notice: 'Qualifying type was successfully created.' }
        format.json { render :show, status: :created, location: @qualifying_type }
      else
        format.html { render :new }
        format.json { render json: @qualifying_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualifying_types/1
  # PATCH/PUT /qualifying_types/1.json
  def update
    respond_to do |format|
      if @qualifying_type.update(qualifying_type_params)
        format.html { redirect_to @qualifying_type, notice: 'Qualifying type was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualifying_type }
      else
        format.html { render :edit }
        format.json { render json: @qualifying_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualifying_types/1
  # DELETE /qualifying_types/1.json
  def destroy
    @qualifying_type.destroy
    respond_to do |format|
      format.html { redirect_to qualifying_types_url, notice: 'Qualifying type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def is_admin?
  unless current_merchant && current_merchant.admin?
   render "layouts/unauthorised"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualifying_type
      @qualifying_type = QualifyingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualifying_type_params
      params.require(:qualifying_type).permit(:name, :icon, :halal_summary)
    end
end
