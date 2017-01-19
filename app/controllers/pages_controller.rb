class PagesController < ApplicationController
  before_action :authenticate_merchant!, only: [:merchant_dashboard, :categories, :places, :ecommers, :food_deliveries, :caterers, :online_grocers, :lessons, :suppliers, :supermarkets ]
  before_filter :is_admin?, only: [:admin_dashboard, :merchant_dashboard, :categories, :places, :ecommers, :food_deliveries, :caterers, :online_grocers, :lessons, :suppliers, :supermarkets]
  
  def index
   @search = Place.ransack(params[:q])
   @places = @search.result.where(draft: false)
   @users_testimonials = UsersTestimonial.all
   @featured_articles = FeaturedArticle.all
  end 

 def merchant_dashboard
 end

 def admin_dashboard
 end

 def corporate_services
 end

 def getting_listed
 end

 def about_us
 end

 def terms_of_use
 end

 def caterers
    @search = Caterer.ransack(params[:q])
    @caterers = @search.result
    @friends_rewards = FriendsReward.all
 end
 
 def ecommers
    @search = Ecommer.ransack(params[:q])
    @ecommers = @search.result
    @friends_rewards = FriendsReward.all
 end
 
 def food_deliveries
    @search = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search.result
    @friends_rewards = FriendsReward.all 
 end
 
 def lessons
 end
 
 def places
    @search = Place.ransack(params[:q])
    @places = @search.result
    @friends_rewards = FriendsReward.all
 end

def online_grocers
    @search = OnlineGrocer.ransack(params[:q])
    @online_grocers = @search.result
    @friends_rewards = FriendsReward.all 
end

def supermarkets
end

def suppliers
    @search = Supplier.ransack(params[:q])
    @suppliers = @search.result
    @friends_rewards = FriendsReward.all 
end

def friends_rewards
    @friends_rewards = FriendsReward.all
    @search.result.includes(:place, :friends_rewards).where(draft: false)
    @search = Place.ransack(params[:q])
end

def ecommers_friends_rewards
  @friends_rewards = FriendsReward.all
  @ecommers = Ecommer.all
end

def halal_delivery
  @friends_rewards = FriendsReward.all
  @search = Place.ransack(params[:q])
end

  def is_admin?
  unless current_merchant && current_merchant.admin?
   render "layouts/unauthorised"
  end
  end

end
