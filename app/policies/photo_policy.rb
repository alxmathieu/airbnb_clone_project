class PhotoPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
