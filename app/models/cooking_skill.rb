class CookingSkill < ActiveRecord::Base
    belongs_to :culinary_skill
    belongs_to :lesson
end
