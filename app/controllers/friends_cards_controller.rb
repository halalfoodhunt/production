class FriendsCardsController < ApplicationController
  before_action :set_friends_reward, only: [:show, :edit, :update, :destroy]
  def index
    @friends_cards = FriendsCard.all
  end
end
