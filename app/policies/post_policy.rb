class PostPolicy < ApplicationPolicy
  def permitted_attributes
    if user.admin? || user.owner_of?(post)
      [:title, :body]
    else
      [:title, :body]
    end
  end
end