class RemovePlayerIdFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :player_id, :integer
  end
end
