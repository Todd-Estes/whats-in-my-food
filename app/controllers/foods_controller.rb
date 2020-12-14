class FoodsController < ApplicationController

  def index
    ingredient = params[:q]

    # conn = Faraday.new("https://api.nal.usda.gov") do |f|
    #   # this format for params~~~
    #         f.params[:api_key] = ENV["FOOD_API_KEY"]
    #   # and this format for headers~~~
    #         # f.headers["X-API-Key"] = ENV["FOOD_API_KEY"]
    #        end
    #
    # response = conn.get("/fdc/v1/foods/search?query=#{ingredient}")
    # # response = conn.get("/fdc/v1/foods/search?query=#{food}&pageSize=25")
    # json = JSON.parse(response.body, symbolize_names: true)
    # require "pry"; binding.pry

    @foods = FoodFacade.ingredient_matcher(ingredient)


  end
end
