class Team < ActiveRecord::Base
  belongs_to :user
  belongs_to :poule
end