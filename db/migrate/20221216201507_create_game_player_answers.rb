class CreateGamePlayerAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :game_player_answers do |t|

      t.timestamps
    end
  end
end
