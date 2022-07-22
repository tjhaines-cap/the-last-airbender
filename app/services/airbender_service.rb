class AirbenderService 

  def self.get_nation_members(nation)
    response = connection.get("/api/v1/characters?affiliation=#{nation}&perPage=200")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end