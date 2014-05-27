class Rider < ActiveRecord::Base
  belongs_to :cycling_team
  belongs_to :country
  belongs_to :tour_team
  
  validates :country_id, presence: true
  validates :cycling_team_id, presence: true
end
