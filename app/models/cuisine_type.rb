class CuisineType < ActiveRecord::Base
    has_many :menu_types
	has_many :places, :through => :menu_types, dependent: :destroy
	has_many :ecommers, :through => :menu_types, dependent: :destroy
	has_many :caterers, :through => :menu_types, dependent: :destroy
	has_many :food_deliveries, :through => :menu_types, dependent: :destroy
	
	has_attached_file :icon, styles: { large: "300x300>", medium: "120x120>", square: "30x30>", thumb: "16x16>" }, default_url: "/images/:style/logo-placeholder.png"
    validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
end
