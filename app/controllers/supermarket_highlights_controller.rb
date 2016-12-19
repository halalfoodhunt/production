class SupermarketHighlightsController < ApplicationController
  before_action :set_supermarket_highlight, only: [:show, :edit, :update, :destroy]

  # GET /supermarket_highlights
  # GET /supermarket_highlights.json
  def index
    @supermarket_highlights = SupermarketHighlight.all
  end

  # GET /supermarket_highlights/1
  # GET /supermarket_highlights/1.json
  def show
  end

  # GET /supermarket_highlights/new
  def new
    @supermarket_highlight = SupermarketHighlight.new
  end

  # GET /supermarket_highlights/1/edit
  def edit
  end

  # POST /supermarket_highlights
  # POST /supermarket_highlights.json
  def create
    @supermarket_highlight = SupermarketHighlight.new(supermarket_highlight_params)

    respond_to do |format|
      if @supermarket_highlight.save
        format.html { redirect_to @supermarket_highlight, notice: 'Supermarket highlight was successfully created.' }
        format.json { render :show, status: :created, location: @supermarket_highlight }
      else
        format.html { render :new }
        format.json { render json: @supermarket_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supermarket_highlights/1
  # PATCH/PUT /supermarket_highlights/1.json
  def update
    respond_to do |format|
      if @supermarket_highlight.update(supermarket_highlight_params)
        format.html { redirect_to @supermarket_highlight, notice: 'Supermarket highlight was successfully updated.' }
        format.json { render :show, status: :ok, location: @supermarket_highlight }
      else
        format.html { render :edit }
        format.json { render json: @supermarket_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supermarket_highlights/1
  # DELETE /supermarket_highlights/1.json
  def destroy
    @supermarket_highlight.destroy
    respond_to do |format|
      format.html { redirect_to supermarket_highlights_url, notice: 'Supermarket highlight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supermarket_highlight
      @supermarket_highlight = SupermarketHighlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supermarket_highlight_params
      params.require(:supermarket_highlight).permit(:name,:icon)
    end
end
