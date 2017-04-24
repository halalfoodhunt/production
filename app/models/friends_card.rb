class FriendsCard < ActiveRecord::Base
    before_create :set_expiration_date
    
    def set_expiration_date
    self.expiry_date =  Date.today + 365.days
    end
end
