class SpecialTagsController < ApplicationController
  before_filter :is_admin?, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_special_tag, only: [:show, :edit, :update, :destroy]

  # GET /special_tags
  # GET /special_tags.json
  def index
    @special_tags = SpecialTag.all
  end

  # GET /special_tags/1
  # GET /special_tags/1.json
  def show
  end

  # GET /special_tags/new
  def new
    @special_tag = SpecialTag.new
  end

  # GET /special_tags/1/edit
  def edit
  end

  # POST /special_tags
  # POST /special_tags.json
  def create
    @special_tag = SpecialTag.new(special_tag_params)

    respond_to do |format|
      if @special_tag.save
        format.html { redirect_to special_tags_path, notice: 'Special tag was successfully created.' }
        format.json { render :show, status: :created, location: @special_tag }
        format.js
      else
        format.html { render :new }
        format.json { render json: @special_tag.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /special_tags/1
  # PATCH/PUT /special_tags/1.json
  def update
    respond_to do |format|
      if @special_tag.update(special_tag_params)
        format.html { redirect_to special_tags_path, notice: 'Special tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_tag }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @special_tag.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /special_tags/1
  # DELETE /special_tags/1.json
  def destroy
    @special_tag.destroy
    respond_to do |format|
      format.html { redirect_to special_tags_url, notice: 'Special tag was successfully destroyed.' }
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
    def set_special_tag
      @special_tag = SpecialTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_tag_params
      params.require(:special_tag).permit(:name, :icon)
    end
end
