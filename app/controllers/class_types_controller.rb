class ClassTypesController < ApplicationController
  before_filter :is_admin?, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_class_type, only: [:show, :edit, :update, :destroy]

  # GET /class_types
  # GET /class_types.json
  def index
    @class_types = ClassType.all
  end

  # GET /class_types/1
  # GET /class_types/1.json
  def show
  end

  # GET /class_types/new
  def new
    @class_type = ClassType.new
  end

  # GET /class_types/1/edit
  def edit
  end

  # POST /class_types
  # POST /class_types.json
  def create
    @class_type = ClassType.new(class_type_params)

    respond_to do |format|
      if @class_type.save
        format.html { redirect_to class_types_path, notice: 'Class type was successfully created.' }
        format.json { render :show, status: :created, location: @class_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /class_types/1
  # PATCH/PUT /class_types/1.json
  def update
    respond_to do |format|
      if @class_type.update(class_type_params)
        format.html { redirect_to @class_type, notice: 'Class type was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /class_types/1
  # DELETE /class_types/1.json
  def destroy
    @class_type.destroy
    respond_to do |format|
      format.html { redirect_to class_types_url, notice: 'Class type was successfully destroyed.' }
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
    def set_class_type
      @class_type = ClassType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_type_params
      params.require(:class_type).permit(:name,:icon)
    end
end
