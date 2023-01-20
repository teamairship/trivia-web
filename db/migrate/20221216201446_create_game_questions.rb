class CreateGameQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :game_questions do |t|
      t.timestamps
      t.references :game, null: false, index: true
      t.references :question, null: false, index: true
    end
  end
end
