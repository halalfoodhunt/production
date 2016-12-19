class SupplierHighlightsController < ApplicationController
  before_action :set_supplier_highlight, only: [:show, :edit, :update, :destroy]

  # GET /supplier_highlights
  # GET /supplier_highlights.json
  def index
    @supplier_highlights = SupplierHighlight.all
  end

  # GET /supplier_highlights/1
  # GET /supplier_highlights/1.json
  def show
  end

  # GET /supplier_highlights/new
  def new
    @supplier_highlight = SupplierHighlight.new
  end

  # GET /supplier_highlights/1/edit
  def edit
  end

  # POST /supplier_highlights
  # POST /supplier_highlights.json
  def create
    @supplier_highlight = SupplierHighlight.new(supplier_highlight_params)

    respond_to do |format|
      if @supplier_highlight.save
        format.html { redirect_to @supplier_highlight, notice: 'Supplier highlight was successfully created.' }
        format.json { render :show, status: :created, location: @supplier_highlight }
      else
        format.html { render :new }
        format.json { render json: @supplier_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplier_highlights/1
  # PATCH/PUT /supplier_highlights/1.json
  def update
    respond_to do |format|
      if @supplier_highlight.update(supplier_highlight_params)
        format.html { redirect_to @supplier_highlight, notice: 'Supplier highlight was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier_highlight }
      else
        format.html { render :edit }
        format.json { render json: @supplier_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_highlights/1
  # DELETE /supplier_highlights/1.json
  def destroy
    @supplier_highlight.destroy
    respond_to do |format|
      format.html { redirect_to supplier_highlights_url, notice: 'Supplier highlight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_highlight
      @supplier_highlight = SupplierHighlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_highlight_params
      params.require(:supplier_highlight).permit(:name,:icon)
    end
end
