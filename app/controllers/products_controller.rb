class ProductsController < ApplicationController
  def index
    @products = Product.all
    @friends_card_options = [1,2,3,4]
    @friends_cards = params[:friends_cards]
  end
end
