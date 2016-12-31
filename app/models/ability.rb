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
    
    can :read, Ecommer do |Ecommer|
        Ecommer.merchant == merchant
    end
    can :update, Ecommer do |Ecommer|
        Ecommer.merchant == merchant
    end
    can :destroy, Ecommer do |Ecommer|
        Ecommer.merchant == merchant
    end
    can :create, Ecommer
    
    can :read, Supplier do |Supplier|
        Supplier.merchant == merchant
    end
    can :update, Supplier do |Supplier|
        Supplier.merchant == merchant
    end
    can :destroy, Supplier do |Supplier|
        Supplier.merchant == merchant
    end
    can :create, Supplier
    
    can :read, Caterer do |Caterer|
        Caterer.merchant == merchant
    end
    can :update, Caterer do |Caterer|
        Caterer.merchant == merchant
    end
    can :destroy, Caterer do |Caterer|
        Caterer.merchant == merchant
    end
end
