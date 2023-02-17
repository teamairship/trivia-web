class TheTriviaApiAdapter
  attr_reader :params

  URL = 'https://the-trivia-api.com/api/questions'
  Params = Struct.new(:limit, :categories, :difficulty, :region, :tags)

  def initialize
    @params = Params.new(10, 1, 'easy', 'US', 'history')
  end
  def get_questions
    conn = Faraday.new(url: URL, params:{**params}, headers: {'Content-Type' => 'application/json'})
    response = conn.get
    print response.body
    JSON.parse(response.body, symbolize_names: true)
  end

end
