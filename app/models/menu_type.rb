class MenuType < ActiveRecord::Base
    belongs_to :cuisine_type
	belongs_to :place
	belongs_to :ecommer
	belongs_to :caterer
	belongs_to :food_delivery
end
