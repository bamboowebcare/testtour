class TourTeamsRider < ActiveRecord::Base
  belongs_to :tour_team
  belongs_to :rider
end
