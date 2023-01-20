# == Schema Information
#
# Table name: games
#
#  id         :bigint           not null, primary key
#  category   :string
#  difficulty :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Game < ApplicationRecord
  has_many :players, class_name: 'Game::Player', inverse_of: :game, dependent: :destroy
  has_many :game_questions, inverse_of: :game, dependent: :destroy
  has_many :questions, through: :game_questions

  enum difficulty: {
    easy: 0,
    medium: 10,
    hard: 20
  }
end
