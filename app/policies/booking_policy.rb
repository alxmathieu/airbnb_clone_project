class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
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


end
