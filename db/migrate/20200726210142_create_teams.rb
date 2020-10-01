class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :wins
      t.integer :losses
      
      t.timestamps
    end
  end
end
