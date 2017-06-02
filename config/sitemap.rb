# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://sg.halalfoodhunt.com"

SitemapGenerator::Sitemap.create do
  
  Place.find_each do |place|
    add place_path(place)
  end
  
  Ecommer.find_each do |ecommer|
    add ecommer_path(ecommer)
  end
  
  Caterer.find_each do |caterer|
    add caterer_path(caterer)
  end
  
  FoodDelivery.find_each do |food_delivery|
    add food_delivery_path(food_delivery)
  end
  
  Supermarket.find_each do |supermarket|
    add supermarket_path(supermarket)
  end
  
  Lesson.find_each do |lesson|
    add lesson_path(lesson)
  end
  
  OnlineGrocer.find_each do |online_grocer|
    add online_grocer_path(online_grocer)
  end
  
  Supplier.find_each do |supplier|
    add supplier_path(supplier)
  end
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
