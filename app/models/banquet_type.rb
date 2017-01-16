class BanquetType < ActiveRecord::Base
    belongs_to :caterer_type
	belongs_to :caterer
end
