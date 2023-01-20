# == Schema Information
#
# Table name: game_players
#
#  id         :bigint           not null, primary key
#  role       :integer          default("participant"), not null
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
class Game::Player < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :answers, class_name: 'Game::Player::Answer', dependent: :destroy

  enum role: {
    participant: 0,
    host: 10
  }
end
