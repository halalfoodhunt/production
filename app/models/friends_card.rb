class FriendsCard < ActiveRecord::Base
    has_many :registrations
    has_many :friends
end
