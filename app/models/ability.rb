class Ability
  include CanCan::Ability

  def initialize(merchant)

    if merchant.admin?
    can :manage, :all
    else
    can :read, Place do |place|
        place.merchant == merchant
    end
    can :update, Place do |place|
        place.merchant == merchant
    end
    can :destroy, Place do |place|
        place.merchant == merchant
    end
    can :create, Place
    
    can :read, Ecommer do |ecommer|
        ecommer.merchant == merchant
    end
    can :update, Ecommer do |ecommer|
        ecommer.merchant == merchant
    end
    can :destroy, Ecommer do |ecommer|
        ecommer.merchant == merchant
    end
    can :create, Ecommer
    
    can :read, Supplier do |supplier|
        supplier.merchant == merchant
    end
    can :update, Supplier do |supplier|
        supplier.merchant == merchant
    end
    can :destroy, Supplier do |supplier|
        supplier.merchant == merchant
    end
    can :create, Supplier
    
    can :read, Caterer do |caterer|
        caterer.merchant == merchant
    end
    can :update, Caterer do |caterer|
        caterer.merchant == merchant
    end
    can :destroy, Caterer do |caterer|
        caterer.merchant == merchant
    end
    can :create, Caterer
    
    can :read, Lesson do |lesson|
        lesson.merchant == merchant
    end
    can :update, Lesson do |lesson|
        lesson.merchant == merchant
    end
    can :destroy, Lesson do |lesson|
        lesson.merchant == merchant
    end
    can :create, Lesson
    
    can :read, FoodDelivery do |food_delivery|
        lesson.merchant == merchant
    end
    can :update, FoodDelivery do |food_delivery|
        lesson.merchant == merchant
    end
    can :destroy, FoodDelivery do |food_delivery|
        lesson.merchant == merchant
    end
    can :create, FoodDelivery
    end
  end
end
