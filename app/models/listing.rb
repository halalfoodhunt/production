class Listing < ActiveRecord::Base
    belongs_to :merchant
    has_many :places, :dependent => :destroy
    has_many :ecommers, :dependent => :destroy
    has_many :caterers, :dependent => :destroy
    has_many :lessons, :dependent => :destroy
    has_many :food_deliveries, :dependent => :destroy
    has_many :supermarkets, :dependent => :destroy
    has_many :online_grocers, :dependent => :destroy
    has_many :suppliers, :dependent => :destroy
end
