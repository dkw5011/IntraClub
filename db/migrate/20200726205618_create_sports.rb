class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :total_players
      t.integer :total_teams

      t.timestamps
    end
  end
end
