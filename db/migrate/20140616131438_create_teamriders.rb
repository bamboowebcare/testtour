class CreateTeamriders < ActiveRecord::Migration
  def change
    create_table :teamriders do |t|
      t.references :team, index: true
      t.references :rider, index: true

      t.timestamps
    end
  end
end
