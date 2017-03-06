class PlacesMenu < ActiveRecord::Base
    has_many :places_menus_categories
	has_many :places, :through => :places_menus_categories
end
