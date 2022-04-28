class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :img
      t.boolean :starting
      t.integer :points
      t.belongs_to :position
      t.belongs_to :fantasy_team
    end
  end
end
