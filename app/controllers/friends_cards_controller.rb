class FriendsCardsController < ApplicationController
  def index
    @friends_cards = FriendsCard.all
  end
end
