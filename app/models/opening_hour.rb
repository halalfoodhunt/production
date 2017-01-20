class OpeningHour < ActiveRecord::Base
  belongs_to :place
  belongs_to :supermarket
  belongs_to :day
  belongs_to :open_or_close
end
