# frozen_string_literal: true

class BaseAdapter

  attr_reader :data, :params

  def initialize(**)
    @client = setup_client
  end

  private

  attr_reader :client, :response

  def fetch_questions
    raise NotImplementedError
  end

  def setup_client
    Faraday.new(url: self.class::URL, headers: { 'Content-Type' => 'application/json' })
  end
end
