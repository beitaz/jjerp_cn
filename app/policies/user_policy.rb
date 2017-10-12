class UserPolicy < ApplicationPolicy
  def index?
    user.email == 'root@qq.com'
  end

  def show?
    false
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
