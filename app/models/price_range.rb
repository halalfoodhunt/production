class PriceRange < ActiveRecord::Base
    has_many :places
    has_many :ecommers
    has_many :food_deliveries
    has_many :caterers
    has_many :supermarkets
    has_many :online_grocers
    has_many :lessons
    has_many :suppliers
end
