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
 end
 
 def ecommers
 end
 
 def food_deliveries
 end
 
 def lessons
 end
 
 def places
  @places = Place.all
  @friends_rewards = FriendsReward.all
end

def online_grocers
end

def supermarkets
end

def suppliers
end

def friends_rewards
  @friends_rewards = FriendsReward.all
  @places = Place.all
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
   render :text => "You are not authorised to perform this action", :status => :unauthorized
 end
end

end
