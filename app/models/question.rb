# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  difficulty :integer          not null
#  prompt     :string           not null
#  provider   :string           not null
#  type       :integer          not null
#  uid        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_questions_on_difficulty  (difficulty)
#  index_questions_on_prompt      (prompt)
#  index_questions_on_type        (type)
#
class Question < ApplicationRecord
  has_many :answers, class_name: 'Question::Answer', dependent: :destroy
  has_many :game_questions, inverse_of: :question, dependent: :destroy
  has_many :games, through: :game_questions

  enum difficulty: {
    easy: 0,
    medium: 10,
    hard: 20
  }
end
