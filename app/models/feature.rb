class Feature < ActiveRecord::Base
    belongs_to :highlight
	belongs_to :place
end
