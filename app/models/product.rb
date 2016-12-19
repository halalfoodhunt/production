class Product < ActiveRecord::Base
    
    before_create :set_expiration_date

    validates_presence_of :merchant_id
    validates_presence_of :business_name
	validates_presence_of :general_contact
	validates_presence_of :operating_address
    validates_presence_of :region
    
    belongs_to :merchant
    belongs_to :qualifying_type
    belongs_to :product_source
    belongs_to :region
    belongs_to :friends_reward
    has_many :product_types, :through => :item_types
    has_many :item_types
        
end
