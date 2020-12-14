class SearchService

  def self.search_ingredients(ingredient)
    response = self.conn.get("/fdc/v1/foods/search?query=ingredients:#{ingredient}")

    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://api.nal.usda.gov") do |f|
      f.params[:api_key] = ENV["FOOD_API_KEY"]
    end
  end
end
