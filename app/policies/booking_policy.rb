class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    record.user == user
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    true
  end

  def update?
    edit?
  end

  def edit?
    record.performance.artist == user || record.customer == user
  end

  def destroy?
    record.user == user
  end



end
