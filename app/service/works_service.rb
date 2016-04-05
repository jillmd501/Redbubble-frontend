class WorksService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("http://take-home-test.herokuapp.com")
  end

  def data
    parse(@connection.get("/api/v1/works.json"))
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names:true)
  end
end
