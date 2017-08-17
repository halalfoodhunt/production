class PagesController < ApplicationController
  before_action :authenticate_merchant!, only: [:merchant_dashboard, :categories, :places, :ecommers, :food_deliveries, :caterers, :online_grocers, :lessons, :suppliers, :supermarkets ]
  before_filter :is_admin?, only: [:admin_dashboard, :merchant_dashboard, :categories, :places, :ecommers, :food_deliveries, :caterers, :online_grocers, :lessons, :suppliers, :supermarkets]
  
  def index
   @search = Place.ransack(params[:q])
   @places = @search.result.where(draft: false).where(featured: true).limit(4)
   @ecommers = Ecommer.all.order("created_at DESC").where(draft: false).where(featured: true).limit(4)
   @caterers = Caterer.all.order("created_at DESC").where(draft: false).limit(4)
   @food_deliveries = FoodDelivery.all.order("created_at DESC").where(draft: false).limit(4)
   @supermarkets = Supermarket.all.order("created_at DESC").where(draft: false).limit(4)
   @lessons = Lesson.all.order("created_at DESC").where(draft: false).limit(4)
   @online_grocers = OnlineGrocer.all.order("created_at DESC").where(draft: false).limit(4)
   @suppliers = Supplier.all.order("created_at DESC").where(draft: false).limit(4)
   @friends_rewards = FriendsReward.all
   @users_testimonials = UsersTestimonial.all
   @featured_articles = FeaturedArticle.all
   @friends_rewards = FriendsReward.all
   if params[:special_tags].blank? 
    @places = Place.all.order("created_at DESC").where(draft: false).where(featured: true).limit(4)
   else
    @special_tag_id = SpecialTag.find_by(name: params[:special_tag]).id
    @places = Place.filter_by_params(params)
   end
   @halalfoodhunt_seos = HalalfoodhuntSeos.where(home: true)
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
   if params[:special_tag].blank? 
   @search = Place.ransack(params[:q])
   @places = @search.result
   else
    @special_tag_id = SpecialTag.find_by(name: params[:special_tag]).id
    @places = Place.joins(:admin_tags).where(admin_tags: {special_tag_id: @special_tag_id})
   end
    @friends_rewards = FriendsReward.all
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
  @friends_rewards = FriendsReward.all.where(draft: false)
end

def friends_rewards
    @search = Place.ransack(params[:q])
    @places = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false).where.not(friends_reward_id: nil).limit(4)
  if params[:friends_reward].blank?
    @search = Place.ransack(params[:q])
    @places = @search.result.where(draft: false).where.not(friends_reward_id: nil).order("created_at DESC")
    @ecommers = Ecommer.all.order("created_at DESC").where(draft: false)
    @caterers = Caterer.all.order("created_at DESC").where(draft: false)
    @food_deliveries = FoodDelivery.all.order("created_at DESC").where(draft: false)
    @supermarkets = Supermarket.all.order("created_at DESC").where(draft: false)
    @lessons = Lesson.all.order("created_at DESC").where(draft: false)
    @online_grocers = OnlineGrocer.all.order("created_at DESC").where(draft: false)
    @suppliers = Supplier.all.order("created_at DESC").where(draft: false)
  else
    @search = Place.ransack(params[:q])
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @places = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @ecommers = Ecommer.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @food_deliveries = FoodDelivery.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @caterers = Caterer.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @lessons = Lesson.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @suppliers = Supplier.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @supermarkets = Supermarket.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @online_grocers = OnlineGrocer.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  end
end

def places_friends_rewards
    @search = Place.ransack(params[:q])
    @places = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false).where.not(friends_reward_id: nil)
  if params[:friends_reward].blank?
    @search = Place.ransack(params[:q])
    @places = @search.result.where(draft: false).where.not(friends_reward_id: nil).order("created_at DESC")
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @places = Place.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  end
end

def ecommers_friends_rewards
    @current_friend = current_friend
    @search = Ecommer.ransack(params[:q])
    @ecommers = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  if params[:friends_reward].blank?
    @search = Ecommer.ransack(params[:q])
    @ecommers = @search.result.where(draft: false).where.not(friends_reward_id: nil)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @ecommers = Ecommer.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  end
end

def caterers_friends_rewards
    @search = Caterer.ransack(params[:q])
    @caterers = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false).where.not(friends_rewards_terms: nil)
  if params[:friends_reward].blank?
    @search = Caterer.ransack(params[:q])
    @caterers = @search.result.where(draft: false).where.not(friends_reward_id: nil)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @search = Caterer.ransack(params[:q])
    @caterers= @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  
  end
end

def lessons_friends_rewards
    @search = Lesson.ransack(params[:q])
    @lessons = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  if params[:friends_reward].blank?
    @search = Lesson.ransack(params[:q])
    @lessons = @search.result.where(draft: false).where.not(friends_reward_id: nil)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @lessons = Lesson.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  end
end

def suppliers_friends_rewards
    @search = Supplier.ransack(params[:q])
    @suppliers = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  if params[:friends_reward].blank?
    @search = Supplier.ransack(params[:q])
    @suppliers = @search.result.where(draft: false).where.not(friends_reward_id: nil)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @suppliers = Supplier.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  end
end

def food_deliveries_friends_rewards
    @search = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  if params[:friends_reward].blank?
    @search = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search.result.where(draft: false).where.not(friends_reward_id: nil)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @food_deliveries = FoodDelivery.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  end
end

def online_grocers_friends_rewards
    @search = OnlineGrocer.ransack(params[:q])
    @online_grocers = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  if params[:friends_reward].blank?
    @search = OnlineGrocer.ransack(params[:q])
    @online_grocers = @search.result.where(draft: false).where.not(friends_reward_id: nil)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @online_grocers = OnlineGrocer.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  end
end

def supermarkets_friends_rewards
    @search = Supermarket.ransack(params[:q])
    @supermarkets = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
  if params[:friends_reward].blank?
    @search = Supermarket.ransack(params[:q])
    @supermarkets = @search.result.where(draft: false).where.not(friends_reward_id: nil)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @supermarkets = Supermarket.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
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

def friends_rewards_results
   @search = Place.ransack(params[:q])
   @places = @search.result.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false).where.not(friends_rewards_terms: nil)
end

def friends
    if params[:friends_reward].blank?
    @places = Place.all.order("created_at DESC").where(draft: false)
    @ecommers = Ecommer.all.order("created_at DESC").where(draft: false)
    @caterers = Caterer.all.order("created_at DESC").where(draft: false)
    @food_deliveries = FoodDelivery.all.order("created_at DESC").where(draft: false)
    @supermarkets = Supermarket.all.order("created_at DESC").where(draft: false)
    @lessons = Lesson.all.order("created_at DESC").where(draft: false)
    @online_grocers = OnlineGrocer.all.order("created_at DESC").where(draft: false)
    @suppliers = Supplier.all.order("created_at DESC").where(draft: false)
  else
    @friends_reward_id = FriendsReward.find_by(name: params[:friends_reward]).id
    @places = Place.where(friends_reward_id: @friends_reward_id).order("created_at DESC").where(draft: false)
    @ecommers = Ecommer.where(friends_reward_id: @friends_reward_id).order("created_at DESC")
    end
end
end
