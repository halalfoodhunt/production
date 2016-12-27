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
end
