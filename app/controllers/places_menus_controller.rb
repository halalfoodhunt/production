class PlacesMenusController < ApplicationController
  before_action :set_places_menu, only: [:show, :edit, :update, :destroy]

  # GET /places_menus
  # GET /places_menus.json
  def index
    @places_menus = PlacesMenu.all
  end

  # GET /places_menus/1
  # GET /places_menus/1.json
  def show
  end

  # GET /places_menus/new
  def new
    @places_menu = PlacesMenu.new
  end

  # GET /places_menus/1/edit
  def edit
  end

  # POST /places_menus
  # POST /places_menus.json
  def create
    @places_menu = PlacesMenu.new(places_menu_params)

    respond_to do |format|
      if @places_menu.save
        format.html { redirect_to places_menus_path, notice: 'Places menu was successfully created.' }
        format.json { render :show, status: :created, location: @places_menu }
      else
        format.html { render :new }
        format.json { render json: @places_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places_menus/1
  # PATCH/PUT /places_menus/1.json
  def update
    respond_to do |format|
      if @places_menu.update(places_menu_params)
        format.html { redirect_to places_menus_path, notice: 'Places menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @places_menu }
      else
        format.html { render :edit }
        format.json { render json: @places_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places_menus/1
  # DELETE /places_menus/1.json
  def destroy
    @places_menu.destroy
    respond_to do |format|
      format.html { redirect_to places_menus_url, notice: 'Places menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_places_menu
      @places_menu = PlacesMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def places_menu_params
      params.require(:places_menu).permit(:name)
    end
end
