class Eatery < ActiveRecord::Base
    
    belongs_to :dining_type
	belongs_to :place
	
end
