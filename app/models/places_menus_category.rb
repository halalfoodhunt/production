class PlacesMenusCategory < ActiveRecord::Base
    belongs_to :places_menu
	belongs_to :place
end
