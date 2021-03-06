module Admin
  class Ability
    include CanCan::Ability

    def initialize(user)
      return unless user.admin?

      can :read, Order
      can :read, Trade
      can :read, Member
      can :update, Member
      can :manage, Deposit
      can :manage, Withdraw
      can :manage, Document

      can :read, ::Statistic::DepositsGrid
      can :read, ::Statistic::WithdrawsGrid
      can :read, ::Statistic::TradesGrid
      can :read, ::Statistic::OrdersGrid
      can :read, ::Statistic::MembersGrid
    end
  end
end
