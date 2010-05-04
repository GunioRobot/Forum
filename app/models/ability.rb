class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    if user.role?(:admin)
      can :manage, :all
    elsif user.role?(:registered)
      can :read, Forum do |forum|
        forum && forum.user_can(user, :read)
      end
      can :read, Thread do |thread|
        thread && thread.user_can(user, :read)
      end
      can :read, Post do |post|
        post && post.user_can(user, :read)
      end
      can :create, Thread
      can :create, Post
      can :update, Post do |post|
        post && post.user_can(user, :update)
      end
      can :destroy, Post do |post|
        post && post.user_can(user, :destroy)
      end
      
      can :read, User
      can :update, User do |viewed_user|
        viewed_user == user
      end
      
      if user.role?(:moderator)
        can :read, :all
      end
    else
      can :read, Forum
      can :read, Thread
      can :read, Post
    end
  end
end