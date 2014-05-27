class TourTeam < ActiveRecord::Base
  belongs_to :user
  belongs_to :poule
  
  has_many :tour_team_riders
end
