class AdminTag < ActiveRecord::Base
    belongs_to :special_tag
	belongs_to :place
end
