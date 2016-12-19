class OpenOrClosesController < ApplicationController
  before_action :set_open_or_close, only: [:show, :edit, :update, :destroy]

  # GET /open_or_closes
  # GET /open_or_closes.json
  def index
    @open_or_closes = OpenOrClose.all
  end

  # GET /open_or_closes/1
  # GET /open_or_closes/1.json
  def show
  end

  # GET /open_or_closes/new
  def new
    @open_or_close = OpenOrClose.new
  end

  # GET /open_or_closes/1/edit
  def edit
  end

  # POST /open_or_closes
  # POST /open_or_closes.json
  def create
    @open_or_close = OpenOrClose.new(open_or_close_params)

    respond_to do |format|
      if @open_or_close.save
        format.html { redirect_to open_or_closes_url, notice: 'Open or close was successfully created.' }
        format.json { render :show, status: :created, location: @open_or_close }
        format.js
      else
        format.html { render :new }
        format.json { render json: @open_or_close.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /open_or_closes/1
  # PATCH/PUT /open_or_closes/1.json
  def update
    respond_to do |format|
      if @open_or_close.update(open_or_close_params)
        format.html {redirect_to open_or_closes_url, notice: 'Open or close was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_or_close }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @open_or_close.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /open_or_closes/1
  # DELETE /open_or_closes/1.json
  def destroy
    @open_or_close.destroy
    respond_to do |format|
      format.html { redirect_to open_or_closes_url, notice: 'Open or close was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_or_close
      @open_or_close = OpenOrClose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_or_close_params
      params.require(:open_or_close).permit(:name)
    end
end
