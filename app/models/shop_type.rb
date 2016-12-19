class ShopType < ActiveRecord::Base
    belongs_to :grocer_type
	belongs_to :online_grocer
end
