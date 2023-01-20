# == Schema Information
#
# Table name: game_player_answers
#
#  id                 :bigint           not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  game_player_id     :bigint           not null
#  question_answer_id :bigint           not null
#
# Indexes
#
#  index_game_player_answers_on_game_player_id      (game_player_id)
#  index_game_player_answers_on_question_answer_id  (question_answer_id)
#
require "test_helper"

class Game::Player::AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
