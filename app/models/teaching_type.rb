class TeachingType < ActiveRecord::Base
    belongs_to :lesson_type
    belongs_to :lesson
end
