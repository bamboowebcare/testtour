class CountryPolicy < Struct.new(:user, :record)
  def show?
   @user.admin?
  end

  def index?
   @user.admin?
  end
  
  def create?
   @user.admin?
  end

  def update?
   @user.admin?
  end

  def destroy?
   @user.admin?
  end

end