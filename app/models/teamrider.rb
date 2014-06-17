class Teamrider < ActiveRecord::Base
  belongs_to :team
  belongs_to :rider
end
