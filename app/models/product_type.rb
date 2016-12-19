class ProductType < ActiveRecord::Base
    has_many :item_types
	has_many :products, :through => :item_types
	has_many :suppliers, :through => :item_types
end
