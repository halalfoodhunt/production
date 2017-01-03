class CatererTypesController < ApplicationController
  before_filter :is_admin?, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_caterer_type, only: [:show, :edit, :update, :destroy]

  # GET /caterer_types
  # GET /caterer_types.json
  def index
    @caterer_types = CatererType.all
  end

  # GET /caterer_types/1
  # GET /caterer_types/1.json
  def show
  end

  # GET /caterer_types/new
  def new
    @caterer_type = CatererType.new
  end

  # GET /caterer_types/1/edit
  def edit
  end

  # POST /caterer_types
  # POST /caterer_types.json
  def create
    @caterer_type = CatererType.new(caterer_type_params)

    respond_to do |format|
      if @caterer_type.save
        format.html { redirect_to caterer_types_path, notice: 'Caterer type was successfully created.' }
        format.json { render :show, status: :created, location: @caterer_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @caterer_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /caterer_types/1
  # PATCH/PUT /caterer_types/1.json
  def update
    respond_to do |format|
      if @caterer_type.update(caterer_type_params)
        format.html { redirect_to @caterer_type, notice: 'Caterer type was successfully updated.' }
        format.json { render :show, status: :ok, location: @caterer_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @caterer_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /caterer_types/1
  # DELETE /caterer_types/1.json
  def destroy
    @caterer_type.destroy
    respond_to do |format|
      format.html { redirect_to caterer_types_url, notice: 'Caterer type was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end
  
  def is_admin?
  unless current_merchant && current_merchant.admin?
   render "layouts/unauthorised"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caterer_type
      @caterer_type = CatererType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caterer_type_params
      params.require(:caterer_type).permit(:name,:icon)
    end
end
