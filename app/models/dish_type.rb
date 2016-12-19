class DishType < ActiveRecord::Base
    belongs_to :food_type
	belongs_to :ecommer
end
