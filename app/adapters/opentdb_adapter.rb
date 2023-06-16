class OpentdbAdapter
  URL = 'https://opentdb.com/api.php'
  def self.get_questions(params)
    conn = Faraday.new(url: URL, params: {amount: params[:amount], category: params[:category], difficulty: params[:difficulty]}, headers: {'Content-Type' => 'application/json'})
    response = conn.get
    print response.body
    JSON.parse(response.body, symbolize_names: true)
  end
end
