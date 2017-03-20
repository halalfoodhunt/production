class FoodProduct < ActiveRecord::Base
    belongs_to :food_item
	belongs_to :ecommer
end
