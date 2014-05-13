class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.text :name
      t.date :birthday
      t.string :country
      t.boolean :tdf
      t.boolean :allround
      t.boolean :climber
      t.boolean :sprinter
      t.boolean :classic
      t.boolean :yellow
      t.boolean :green
      t.boolean :white
      t.boolean :polka
      t.references :cycling_teams, index: true

      t.timestamps
    end
  end
end
