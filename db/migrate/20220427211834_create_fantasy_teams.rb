class CreateFantasyTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :fantasy_teams do |t|
      t.string :name
      t.integer :total_points
    end
  end
end
