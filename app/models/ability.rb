class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all, public: true
    return unless user.present?

    can :manage, Food, user: user
    can :manage, Recipe, user: user
    can :read, :all, public: false, user: user
  end
end
