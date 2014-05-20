class Rider < ActiveRecord::Base
  belongs_to :cycling_team
  belongs_to :country
  
  has_many :tour_teams
end
