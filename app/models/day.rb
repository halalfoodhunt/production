class Day < ActiveRecord::Base
    belongs_to :place
    belongs_to :supermarket
    has_many :opening_hours, :dependent => :destroy
    accepts_nested_attributes_for :opening_hours, allow_destroy: true
end
