# == Schema Information
#
# Table name: game_players
#
#  id         :bigint           not null, primary key
#  role       :integer          not null
#  score      :decimal(10, 2)   default(0.0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_game_players_on_game_id  (game_id)
#  index_game_players_on_role     (role)
#  index_game_players_on_score    (score)
#  index_game_players_on_user_id  (user_id)
#
require "test_helper"

class Game::PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
