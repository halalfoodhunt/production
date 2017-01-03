class DiningTypesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_dining_type, only: [:show, :edit, :update, :destroy]

  # GET /dining_types
  # GET /dining_types.json
  def index
    @dining_types = DiningType.all
  end

  # GET /dining_types/1
  # GET /dining_types/1.json
  def show
  end

  # GET /dining_types/new
  def new
    @dining_type = DiningType.new
  end

  # GET /dining_types/1/edit
  def edit
  end

  # POST /dining_types
  # POST /dining_types.json
  def create
    @dining_type = DiningType.new(dining_type_params)

    respond_to do |format|
      if @dining_type.save
        format.html { redirect_to dining_types_path, notice: 'Dining type was successfully created.' }
        format.json { render :show, status: :created, location: @dining_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @dining_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /dining_types/1
  # PATCH/PUT /dining_types/1.json
  def update
    respond_to do |format|
      if @dining_type.update(dining_type_params)
        format.html { redirect_to @dining_type, notice: 'Dining type was successfully updated.' }
        format.json { render :show, status: :ok, location: @dining_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @dining_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /dining_types/1
  # DELETE /dining_types/1.json
  def destroy
    @dining_type.destroy
    respond_to do |format|
      format.html { redirect_to dining_types_url, notice: 'Dining type was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining_type
      @dining_type = DiningType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dining_type_params
      params.require(:dining_type).permit(:name ,:icon)
    end
end
