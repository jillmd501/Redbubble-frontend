class WorksService

  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("http://api.mytrelora.com")
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names:true)
  end
end
