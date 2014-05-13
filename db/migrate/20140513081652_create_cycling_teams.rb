class CreateCyclingTeams < ActiveRecord::Migration
  def change
    create_table :cycling_teams do |t|
      t.string :name
      t.text :description
      t.text :logo
      t.boolean :tdf

      t.timestamps
    end
  end
end
