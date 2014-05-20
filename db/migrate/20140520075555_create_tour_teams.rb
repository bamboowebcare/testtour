class CreateTourTeams < ActiveRecord::Migration
  def change
    create_table :tour_teams do |t|
      t.string :name
      t.references :user, index: true
      t.references :poule, index: true

      t.timestamps
    end
  end
end
