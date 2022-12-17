class CreateGameQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :game_questions do |t|

      t.timestamps
    end
  end
end
