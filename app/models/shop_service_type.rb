class ShopServiceType < ActiveRecord::Base
    belongs_to :grocer_service_type
	belongs_to :online_grocer
end
