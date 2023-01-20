class CreateGamePlayerAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :game_player_answers do |t|
      t.timestamps
      t.references :question_answer, null: false, index: true
      t.references :game_player, null: false, index: true
    end
  end
end
