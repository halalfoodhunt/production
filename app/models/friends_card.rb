class FriendsCard < ActiveRecord::Base
    has_many :orders
    has_many :order_items
    has_many :products
    belongs_to :friend
    
    before_create :set_expiration_date
    
    def set_expiration_date
    self.expiry_date =  Date.today + 365.days
    end
end
