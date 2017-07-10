class Order < ActiveRecord::Base
  
  belongs_to :product

  has_many :order_items
  has_many :friends_cards, :through => :order_items
  
  validates :product_id, presence: true
	accepts_nested_attributes_for :friends_cards
	
end
