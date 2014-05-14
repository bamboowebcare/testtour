class UserPolicy
  attr_reader :user, :record

  def initialize(user, record)
   raise Pundit::NotAuthorizedError, "must be logged in" unless user
    @user = user
    @record = record
  end

  def index?
    true
  end

  def update?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end

end
