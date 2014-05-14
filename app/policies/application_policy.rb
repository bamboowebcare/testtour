class ApplicationPolicy < Struct.new(:user, :record)
  def show?
    true
  end

  def index?
    true
  end
  
  def create?
    false
  end

  def update?
    false
  end

  def destroy?
    false
  end

end