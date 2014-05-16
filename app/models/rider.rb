class Rider < ActiveRecord::Base
  belongs_to :cycling_team
  belongs_to :country
end
