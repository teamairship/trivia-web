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
class Question::Category < ApplicationRecord
  belongs_to :question
  belongs_to :category
end
