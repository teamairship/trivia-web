# == Schema Information
#
# Table name: game_questions
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Game::Question < ApplicationRecord
  belongs_to :game
  belongs_to :question
end
