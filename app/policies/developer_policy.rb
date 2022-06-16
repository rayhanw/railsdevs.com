class DeveloperPolicy < ApplicationPolicy
  def update?
    record_owner?
  end

  def show?
    admin? || record.visible? || record_owner?
  end
end
