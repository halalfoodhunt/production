class DishType < ActiveRecord::Base
    belongs_to :food_type
	belongs_to :ecommer
	belongs_to :supplier
end
