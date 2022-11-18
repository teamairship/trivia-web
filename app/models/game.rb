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

  enum difficulty: {
    easy: 0,
    medium: 10,
    hard: 20
  }
end
