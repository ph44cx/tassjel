class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role? == "general_manager"
      can :manage, :all
        elsif user.role? "university_manager"
          can [:read, :create, :update,:destroy], User
          can :read, :all
        elsif user.role? == "blogger_author"
          can [:read, :create, :update,:destroy], Post
        elsif user.role? == "student_manager"
          can [:read, :create, :update,:destroy], User
        elsif user.role? == "student"
          can [:read], Post
        else
          can [:read], :all
    end
  end
end
