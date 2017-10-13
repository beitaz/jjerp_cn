class UserPolicy < ApplicationPolicy
  def index?
    user.admin?
  end

  def show?
    user.admin? || user.id == record.id
  end

  def edit?
    this.show?
  end

  def update?
    this.show?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
