class SupermarketHighlight < ActiveRecord::Base
    has_many :supermarket_features
	has_many :supermarkets, :through => :supermarket_features
 has_attached_file :icon, styles: { large: "300x300>", medium: "120x120>", square: "30x30>", thumb: "16x16>" }, default_url: "/images/:style/logo-placeholder.png"
    validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
end
