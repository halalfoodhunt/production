class CatererPackagesController < ApplicationController
  before_filter :is_admin?, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_caterer_package, only: [:show, :edit, :update, :destroy]

  # GET /caterer_packages
  # GET /caterer_packages.json
  def index
    @caterer_packages = CatererPackage.all
  end

  # GET /caterer_packages/1
  # GET /caterer_packages/1.json
  def show
  end

  # GET /caterer_packages/new
  def new
    @caterer_package = CatererPackage.new
  end

  # GET /caterer_packages/1/edit
  def edit
  end

  # POST /caterer_packages
  # POST /caterer_packages.json
  def create
    @caterer_package = CatererPackage.new(caterer_package_params)

    respond_to do |format|
      if @caterer_package.save
        format.html { redirect_to @caterer_package, notice: 'Caterer package was successfully created.' }
        format.json { render :show, status: :created, location: @caterer_package }
      else
        format.html { render :new }
        format.json { render json: @caterer_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caterer_packages/1
  # PATCH/PUT /caterer_packages/1.json
  def update
    respond_to do |format|
      if @caterer_package.update(caterer_package_params)
        format.html { redirect_to @caterer_package, notice: 'Caterer package was successfully updated.' }
        format.json { render :show, status: :ok, location: @caterer_package }
      else
        format.html { render :edit }
        format.json { render json: @caterer_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caterer_packages/1
  # DELETE /caterer_packages/1.json
  def destroy
    @caterer_package.destroy
    respond_to do |format|
      format.html { redirect_to caterer_packages_url, notice: 'Caterer package was successfully destroyed.' }
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
    def set_caterer_package
      @caterer_package = CatererPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caterer_package_params
      params.require(:caterer_package).permit(:name, :description, :minimum_pax, :price)
    end
end
