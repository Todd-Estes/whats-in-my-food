class FoodFacade
  def self.ingredient_matcher(ingredient)
    food_info = SearchService.search_ingredients(ingredient)
    require "pry"; binding.pry
    @foods = food_info[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end
