class Ability
  # Add in CanCan's ability definition DSL
  include CanCan::Ability

  def initialize(user)
    can :read, :all, public: true

    return unless user.present?

    can :create, [Recipe, Food]
    can :destroy, [Recipe, Food], user: user
    can :read, :all, public: false, user: user
  end
end
