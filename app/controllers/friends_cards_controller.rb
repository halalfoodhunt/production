class FriendsCardsController < ApplicationController
  before_action :authenticate_friend!, only: [:index, :new, :edit, :create, :update, :destroy]
  before_action :set_friends_card, only: [:show, :edit, :update, :destroy]
  before_filter :is_admin?, only: [:index, :edit, :update, :destroy]

  # GET /friends_cards
  # GET /friends_cards.json
  def index
    @friends_cards = FriendsCard.all
  end

  # GET /friends_cards/1
  # GET /friends_cards/1.json
  def show
  end

  # GET /friends_cards/new
  def new
    @friends_card = FriendsCard.new
  end

  # GET /friends_cards/1/edit
  def edit
  end

  # POST /friends_cards
  # POST /friends_cards.json
  def create
    @friends_card = FriendsCard.new(friends_card_params)

    respond_to do |format|
      if @friends_card.save
        format.html { redirect_to @friends_card, notice: 'Please make payment for your FRIENDS Reward Card' }
        format.json { render :show, status: :created, location: @friends_card }
      else
        format.html { render :new }
        format.json { render json: @friends_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends_cards/1
  # PATCH/PUT /friends_cards/1.json
  def update
    respond_to do |format|
      if @friends_card.update(friends_card_params)
        format.html { redirect_to @friends_card, notice: 'Friends card was successfully updated.' }
        format.json { render :show, status: :ok, location: @friends_card }
      else
        format.html { render :edit }
        format.json { render json: @friends_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends_cards/1
  # DELETE /friends_cards/1.json
  def destroy
    @friends_card.destroy
    respond_to do |format|
      format.html { redirect_to friends_cards_url, notice: 'Friends card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends_card
      @friends_card = FriendsCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friends_card_params
      params.require(:friends_card).permit(:name, :email, :ic_number, :date_of_birth, :contact_number, :shipping_address, :expiry_date, :gift, :paid, :direct_bank_transfer, :paypal, :price)
    end
    
    def is_admin?
      if current_friend && current_friend.admin?
      render "layouts/unauthorised"
    end
end
end
