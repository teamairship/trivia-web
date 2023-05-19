# frozen_string_literal: true

namespace :trivia do
  desc 'Fetch new questions from The Trivia API'
  task fetch: :environment do
    adapter = TheTriviaApiAdapter.new(limit: 50)
    questions = adapter.data

    if questions.present?
      questions.each do |question|
        Question.find_or_create_by(uid: question[:uid]) do |q|
          q.assign_attributes(question)
        end
      end
      puts "#{questions.count} questions fetched and saved to the database."
    else
      puts 'No new questions found.'
    end
  end
end
