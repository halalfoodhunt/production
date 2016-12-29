class PagesController < ApplicationController
  before_filter :is_admin?, only: [:admin_dashboard]
  
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
  end
  
  def online_grocers
  end
  
  def supermarkets
  end
  
  def suppliers
  end
  
  def friends_rewards
    @search = Place.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @places = @search.result.where(draft: false)
    @friends_rewards = FriendsReward.all
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
    marker.lat place.latitude
    marker.lng place.longitude
    marker.json({operating_address: place.operating_address})
    marker.picture({
     "url" => "http://halalfoodhunt.com/friends/wp-content/uploads/2016/10/shadows-marker.png",
     "width" =>  52,
     "height" => 52})
    marker.infowindow render_to_string(:partial => "/layouts/infobox", :locals => { :place => place})
  end

end
