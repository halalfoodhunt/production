class FoodItem < ActiveRecord::Base
    has_many :food_products
	has_many :ecommers, :through => :food_products
end
