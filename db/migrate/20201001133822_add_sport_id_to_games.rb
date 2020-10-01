class AddSportIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :sport_id, :integer
  end
end
