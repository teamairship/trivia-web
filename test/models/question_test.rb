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
require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
