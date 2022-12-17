class CreateGamePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :game_players do |t|
      t.timestamps
      t.references :game, null: false, index: true
      t.references :user, null: false, index: true
      t.integer :role, null: false, index: true
      t.decimal :score, null: false, index: true, precision: 10, scale: 2, default: 0.00
    end
  end
end
