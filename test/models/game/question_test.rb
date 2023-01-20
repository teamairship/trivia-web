# == Schema Information
#
# Table name: game_questions
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :bigint           not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_game_questions_on_game_id      (game_id)
#  index_game_questions_on_question_id  (question_id)
#
require "test_helper"

class Game::QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
