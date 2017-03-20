class FoodItem < ActiveRecord::Base
    has_many :food_products
	has_many :ecommers, :through => :food_products
	has_many :food_deliveries, :through => :food_products
	
	has_attached_file :icon, styles: { large: "300x300>", medium: "120x120>", square: "30x30>", thumb: "16x16>" }, default_url: "/images/:style/logo-placeholder.png"
    validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
end
