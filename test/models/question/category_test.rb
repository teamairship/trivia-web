# == Schema Information
#
# Table name: question_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_question_categories_on_category_id  (category_id)
#  index_question_categories_on_question_id  (question_id)
#
require "test_helper"

class Question::CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
