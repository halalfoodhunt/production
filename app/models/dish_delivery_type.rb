class DishDeliveryType < ActiveRecord::Base
    belongs_to :food_delivery_type
	belongs_to :food_delivery
end
