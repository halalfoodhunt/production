class Location < ActiveRecord::Base
    has_many :places
    has_many :lessons
    has_many :ecommers
    has_many :online_grocers
    has_many :supermarkets
    has_many :suppliers
end
