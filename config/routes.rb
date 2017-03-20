Rails.application.routes.draw do

  resources :food_items
  resources :places_menus
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Added by Koudoku.
  mount Koudoku::Engine, at: 'koudoku'
  scope module: 'koudoku' do
    get 'pricing' => 'subscriptions#index', as: 'pricing'
  end


  mount StripeEvent::Engine, at: '/stripe/webhook'

  root to: 'pages#index'
  
  get 'pages/merchant_dashboard'

  get 'pages/admin_dashboard'

  get 'pages/corporate_services'

  get 'pages/getting_listed'

  get 'pages/about_us'
  
  get 'pages/places'
  
  get 'pages/ecommers'
  
  get 'pages/caterers'
  
  get 'pages/lessons'
  
  get 'pages/food_deliveries'
  
  get 'pages/suppliers'
  
  get 'pages/supermarkets'
  
  get 'pages/online_grocers'

  get 'pages/terms_of_use'

  get 'pages/privacy_policy'
  
  get 'pages/categories'
  
  get 'pages/friends_rewards'
  
  get 'pages/friends'
  
  get 'pages/places_friends_rewards'
  
  get 'pages/ecommers_friends_rewards'
  
  get 'pages/caterers_friends_rewards'
  
  get 'pages/lessons_friends_rewards'
  
  get 'pages/suppliers_friends_rewards'
  
  get 'pages/food_deliveries_friends_rewards'
  
  get 'pages/online_grocers_friends_rewards'
  
  get 'pages/supermarkets_friends_rewards'
  
  resources :verifying_types
  resources :users_testimonials
  resources :featured_articles
  resources :listings
  resources :supermarket_highlights
  resources :supermarkets do
     collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :grocer_service_types
  resources :food_delivery_types
  resources :food_deliveries do
     collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :supplier_highlights
  resources :grocer_types
  resources :online_grocers do
     collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :catering_types
  resources :open_or_closes
  resources :price_ranges
  resources :place_types
  resources :regions
  resources :supplier_types
  resources :friends_rewards do
     collection do
      get :all
      put :update_all
    end
  end
  resources :suppliers do
     collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :product_types
  resources :product_sources
  resources :products
  resources :establishment_types
  resources :culinary_skills
  resources :class_types
  resources :lesson_types 
  resources :food_types
  resources :service_types
  resources :caterer_types 
  resources :dining_types
  resources :cuisine_types
  resources :highlights
  resources :locations
  resources :qualifying_types
  resources :qualifyings
  resources :lessons do
     collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :caterer_packages
  resources :caterers do
     collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :ecommers do
     collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :places do
     collection do
      post :search, to: 'pages#friends_rewards' 
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :special_tags
  resources :days
 
  devise_for :merchants, controllers: { registrations: "merchants/registrations" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
