class Product < ActiveRecord::Base
    has_many :orders
    has_many :friends_card, :through => :order_items
end
