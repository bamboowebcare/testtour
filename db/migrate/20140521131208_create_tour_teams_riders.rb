class CreateTourTeamsRiders < ActiveRecord::Migration
  def change
    create_table :tour_teams_riders do |t|
      t.references :tour_team, index: true
      t.references :rider, index: true

      t.timestamps
    end
  end
end
