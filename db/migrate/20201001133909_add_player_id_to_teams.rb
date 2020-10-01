class AddPlayerIdToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :player_id, :integer
  end
end
