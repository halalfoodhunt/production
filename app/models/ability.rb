class Ability
  include CanCan::Ability

  def initialize(merchant)

    if merchant.(:try.admin?)
    can :access, :rails_admin   # grant access to rails_admin
    can :dashboard              # grant access to the dashboard
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
        Ecommer.merchant == merchant
    end
    can :update, Ecommer do |ecommer|
        Ecommer.merchant == merchant
    end
    can :destroy, Ecommer do |ecommer|
        Ecommer.merchant == merchant
    end
    can :create, Ecommer
    
    can :read, Supplier do |supplier|
        Supplier.merchant == merchant
    end
    can :update, Supplier do |supplier|
        Supplier.merchant == merchant
    end
    can :destroy, Supplier do |supplier|
        Supplier.merchant == merchant
    end
    can :create, Supplier
    
    can :read, Caterer do |caterer|
        Caterer.merchant == merchant
    end
    can :update, Caterer do |caterer|
        Caterer.merchant == merchant
    end
    can :destroy, Caterer do |caterer|
        Caterer.merchant == merchant
    end
    can :create, Caterer
    end
  end
end
