class OrderItem < ActiveRecord::Base
  belongs_to :friends_card
  belongs_to :order
end
