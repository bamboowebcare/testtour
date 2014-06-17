class Team < ActiveRecord::Base
  belongs_to :user
  belongs_to :poule
  
  has_many :teamriders
end
