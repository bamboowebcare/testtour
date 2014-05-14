class CreateTdFgameTeamRiders < ActiveRecord::Migration
  def change
    create_table :td_fgame_team_riders do |t|
      t.references :tdfgameteam, index: true
      t.references :rider, index: true

      t.timestamps
    end
  end
end
