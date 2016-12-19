class GrocerTypesController < ApplicationController
  before_action :set_grocer_type, only: [:show, :edit, :update, :destroy]

  # GET /grocer_types
  # GET /grocer_types.json
  def index
    @grocer_types = GrocerType.all
  end

  # GET /grocer_types/1
  # GET /grocer_types/1.json
  def show
  end

  # GET /grocer_types/new
  def new
    @grocer_type = GrocerType.new
  end

  # GET /grocer_types/1/edit
  def edit
  end

  # POST /grocer_types
  # POST /grocer_types.json
  def create
    @grocer_type = GrocerType.new(grocer_type_params)

    respond_to do |format|
      if @grocer_type.save
        format.html { redirect_to @grocer_type, notice: 'Grocer type was successfully created.' }
        format.json { render :show, status: :created, location: @grocer_type }
      else
        format.html { render :new }
        format.json { render json: @grocer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocer_types/1
  # PATCH/PUT /grocer_types/1.json
  def update
    respond_to do |format|
      if @grocer_type.update(grocer_type_params)
        format.html { redirect_to @grocer_type, notice: 'Grocer type was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocer_type }
      else
        format.html { render :edit }
        format.json { render json: @grocer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grocer_types/1
  # DELETE /grocer_types/1.json
  def destroy
    @grocer_type.destroy
    respond_to do |format|
      format.html { redirect_to grocer_types_url, notice: 'Grocer type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocer_type
      @grocer_type = GrocerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocer_type_params
      params.require(:grocer_type).permit(:name,:icon)
    end
end
