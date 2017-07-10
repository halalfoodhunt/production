class Product < ActiveRecord::Base
    has_many :orders
    has_many :order_items
    has_many :friends_cards, :through => :order_items
end
