# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  difficulty :integer          not null
#  prompt     :string           not null
#  provider   :string           not null
#  status     :integer          not null
#  type       :integer          not null
#  uid        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_questions_on_difficulty  (difficulty)
#  index_questions_on_prompt      (prompt)
#  index_questions_on_status      (status)
#  index_questions_on_type        (type)
#
class Question < ApplicationRecord
end
