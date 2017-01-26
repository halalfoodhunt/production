class PagesController < ApplicationController
  before_action :authenticate_merchant!, only: [:merchant_dashboard, :categories, :places, :ecommers, :food_deliveries, :caterers, :online_grocers, :lessons, :suppliers, :supermarkets ]
  before_filter :is_admin?, only: [:admin_dashboard, :merchant_dashboard, :categories, :places, :ecommers, :food_deliveries, :caterers, :online_grocers, :lessons, :suppliers, :supermarkets]
  
  def index
   @search = Place.ransack(params[:q])
   @places = @search.result.where(draft: false)
   @users_testimonials = UsersTestimonial.all
   @featured_articles = FeaturedArticle.all
   if params[:special_tags].blank? 
    @places = Place.all.where(draft: false)
   else
    @special_tag_ids = SpecialTag.find_by(name: params[:special_tags]).id
    @places = Place.all.where(special_tag_ids: @special_tag_ids).where(draft: false)
   end
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
  @search = Lesson.ransack(params[:q])
  @lessons = @search.result
  @friends_rewards = FriendsReward.all 
end

def places
  if params[:special_tags].blank?
    @places = Place.all.order("created_at DESC")
    @friends_rewards = FriendsReward.all
  else
    @places = SpecialTag.includes(:special_tags, :admin_tags).where('special_tag.id = ?', <id or ids array>)
    @friends_rewards = FriendsReward.all
  end
end

def online_grocers
  @search = OnlineGrocer.ransack(params[:q])
  @online_grocers = @search.result
  @friends_rewards = FriendsReward.all 
end

def supermarkets
  @search = Supermarket.ransack(params[:q])
  @supermarkets = @search.result
  @friends_rewards = FriendsReward.all 
end

def suppliers
  @search = Supplier.ransack(params[:q])
  @suppliers = @search.result
  @friends_rewards = FriendsReward.all 
end

def friends_rewards
  if params[:friends_reward].blank?
    @places = Place.all.order("created_at DESC")
    @ecommers = Ecommer.all.order("created_at DESC")
    @caterers = Caterer.all.order("created_at DESC")
    @food_deliveries = FoodDelivery.all.order("created_at DESC")
    @supermarkets = Supermarket.all.order("created_at DESC")
    @lessons = Lesson.all.order("created_at DESC")
    @online_grocers = OnlineGrocer.all.order("created_at DESC")
    @suppliers = Supplier.all.order("created_at DESC")
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @places = Place.where(friends_reward_id: @friends_reward_id).order("created_at DESC")
    @ecommers = Ecommer.where(friends_reward_id: @friends_reward_id).order("created_at DESC")
  end
end

def ecommers_friends_rewards
  if params[:friends_reward].blank?
    @ecommers = Ecommer.all.order("created_at DESC")
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @ecommers = Ecommer.where(friends_reward_id: @friends_reward_id).order("created_at DESC")
  end
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
