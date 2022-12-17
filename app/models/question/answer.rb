# == Schema Information
#
# Table name: question_answers
#
#  id          :bigint           not null, primary key
#  correct     :boolean
#  value       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_question_answers_on_correct      (correct)
#  index_question_answers_on_question_id  (question_id)
#
class Question::Answer < ApplicationRecord
end
