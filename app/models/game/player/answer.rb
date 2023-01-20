# == Schema Information
#
# Table name: game_player_answers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Game::Player::Answer < ApplicationRecord
  belongs_to :question_answer
  belongs_to :game_player
end
