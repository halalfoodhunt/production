class ServiceCategory < ActiveRecord::Base
    belongs_to :service_type
	belongs_to :ecommer
end
