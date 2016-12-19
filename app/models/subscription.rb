class Subscription < ActiveRecord::Base
  include Koudoku::Subscription
  
  belongs_to :merchant
  belongs_to :coupon

end
