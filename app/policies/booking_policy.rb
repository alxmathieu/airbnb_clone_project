class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
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
    record.user == user
  end

  def edit?
    record.user == user
  end

  def destroy?
    record.user == user
  end



  end
end
