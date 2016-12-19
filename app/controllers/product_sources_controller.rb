class ProductSourcesController < ApplicationController
  before_action :set_product_source, only: [:show, :edit, :update, :destroy]

  # GET /product_sources
  # GET /product_sources.json
  def index
    @product_sources = ProductSource.all
  end

  # GET /product_sources/1
  # GET /product_sources/1.json
  def show
  end

  # GET /product_sources/new
  def new
    @product_source = ProductSource.new
  end

  # GET /product_sources/1/edit
  def edit
  end

  # POST /product_sources
  # POST /product_sources.json
  def create
    @product_source = ProductSource.new(product_source_params)

    respond_to do |format|
      if @product_source.save
        format.html { redirect_to @product_source, notice: 'Product source was successfully created.' }
        format.json { render :show, status: :created, location: @product_source }
      else
        format.html { render :new }
        format.json { render json: @product_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_sources/1
  # PATCH/PUT /product_sources/1.json
  def update
    respond_to do |format|
      if @product_source.update(product_source_params)
        format.html { redirect_to @product_source, notice: 'Product source was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_source }
      else
        format.html { render :edit }
        format.json { render json: @product_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_sources/1
  # DELETE /product_sources/1.json
  def destroy
    @product_source.destroy
    respond_to do |format|
      format.html { redirect_to product_sources_url, notice: 'Product source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_source
      @product_source = ProductSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_source_params
      params.require(:product_source).permit(:name)
    end
end
