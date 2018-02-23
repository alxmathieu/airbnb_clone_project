class PerformancePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    record.artist == user
  end

  def destroy?
    record.artist == user
  end

end
