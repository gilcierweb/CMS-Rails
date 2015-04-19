class Ability
  include CanCan::Ability

  def initialize(user)
    #can :read, :all

    user ||= User.new
   #abort(user.role.name)
    if user.role.name == "admin"
      can :manage, :all
    elsif user.role.name == "moderator"
      #can :new, :create, :update, :read, :all
      can :create, :all
      can :update, :all
      can :read, :all
      cannot :destroy, :all
    else
      can :read, :all

      if user.role.name == "author"
        can :create, Article
        can :update, Article do |article|
          article.try(:user) == user
        end
      end

    end

    # if user.has_role? :admin
    #   can :manage, :all
    # elsif user.has_role? :editor
    #   can :manage, :all
    #   cannot :destroy, all
    # elsif user.has_role? :author
    #   can :manage, User
    # elsif user.has_role? :moderator
    #   can :read, :all
    #   can :dashboard, User
    #   cannot :read, Role
    # elsif user.has_role? :guest
    #   can :new, :create, User
    # end
    # http://runnable.com/UqI11ZPURQcmAADK/how-define-abilities-with-cancan-for-ruby-on-rails

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
