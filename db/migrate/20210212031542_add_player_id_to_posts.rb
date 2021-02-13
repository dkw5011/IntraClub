class AddPlayerIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :player_id, :integer
  end
end
