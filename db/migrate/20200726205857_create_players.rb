class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.integer :age
      

      t.timestamps
    end
  end
end
