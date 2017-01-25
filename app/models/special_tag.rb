class SpecialTag < ActiveRecord::Base
    has_many :admin_tags
	has_many :places, :through => :admin_tags
	
	has_attached_file :icon, styles: { large: "300x300>", medium: "120x120>", square: "30x30>", thumb: "16x16>" }, default_url: "/images/:style/logo-placeholder.png"
    validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
end
