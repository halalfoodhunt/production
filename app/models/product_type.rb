class ProductType < ActiveRecord::Base
    has_many :item_types
	has_many :suppliers, :through => :item_types
end
