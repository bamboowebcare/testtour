class CreateTdFgameTeams < ActiveRecord::Migration
  def change
    create_table :td_fgame_teams do |t|
      t.references :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
