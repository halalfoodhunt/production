class QualifyingType < ActiveRecord::Base
    has_many :places
    has_many :ecommers
    has_many :caterers
    has_many :food_deliveries
    has_many :supermarkets
    has_many :online_grocers
    has_many :suppliers
    
    has_attached_file :icon, styles: { large: "300x300>", medium: "120x120>", square: "40x40>", thumb: "16x16>" }, default_url: "/images/:style/logo-placeholder.png"
    validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
end
