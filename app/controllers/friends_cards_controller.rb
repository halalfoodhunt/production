class FriendsCardsController < ApplicationController
  before_action :set_friends_card, only: [:show, :edit, :update, :destroy]
  
  def index
    @friends_cards = FriendsCard.all
  end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends_card
      @friends_card = FriendsCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friends_card_params
      params.require(:friends_card).permit(:name, :price, :friend_id, :recurring, :period, :cycles)
    end
end
