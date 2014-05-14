class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_tp :user
end
