class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :location
      t.string :team
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
