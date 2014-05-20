class Poule < ActiveRecord::Base
  belongs_to :user
  has_many :tour_teams
end
