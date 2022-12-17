class CreateQuestionAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :question_answers do |t|
      t.timestamps
      t.references :question, null: false, index: true
      t.string :value, null: false
      t.boolean :correct, index: true
    end
  end
end
