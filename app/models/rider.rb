class Rider < ActiveRecord::Base
  belongs_to :cycling_team
  has_many :tdfgameteamriders
end
