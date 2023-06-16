# frozen_string_literal: true

class TheTriviaApiAdapter < BaseAdapter
  URL = 'https://the-trivia-api.com/v2'

  def initialize(**params)
    super
    @params = Params.new(**params)
    @data = fetch_questions
  end

  private

  Params = Struct.new(:limit, :categories, :difficulty, :region, :tags, keyword_init: true) do
    def to_hash
      to_h.compact_blank
    end
  end

  def fetch_questions
    result = client.get('questions', **params)
    @response = JSON.parse(result.body, symbolize_names: true)
    formatted_response
  end

  def formatted_response
    provider = 'the-trivia-api'

    response.map do |question|
      {
        difficulty: question[:difficulty],
        prompt: question.dig(:question, :text),
        provider: provider,
        type: 'multiple_choice',
        uid: "#{provider}-#{question[:id]}",
        answers_attributes: mapped_answers(question),
      }
    end
  end

  def mapped_answers(question)
    correct_answer = question[:correctAnswer]
    incorrect_answers = question[:incorrectAnswers]
    answers = [{ value: correct_answer.strip, correct: true }] + incorrect_answers.map { |ia| { value: ia.strip, correct: false } }
    answers.shuffle!
    answers
  end
end
