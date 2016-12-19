class CourseType < ActiveRecord::Base
    belongs_to :class_type
    belongs_to :lesson
end
