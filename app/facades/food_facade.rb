class FoodFacade
  def self.ingredient_matcher(ingredient)
    food_info = SearchService.search_ingredients(ingredient)
    @foods = food_info[:foods][0..9].map do |food_data|
      Food.new(food_data)
    end
  end
end

# this will return a hash filled with arrays; hit [:foods] and its going to return arrys
  # def self.search_food(food)
  #   food_data = SearchService.find_food(food)
  #   Food.new(food_data)
  # end
  #
  # # OR
  # food_data = SearchService.find_food(food)
  # @foods = food_data[:foods].map do |info|
  #   Food.new(info)
  #
  #   def self.credits(id)


# ~~~~~~~~~~~~~~~~~~~~~~~~~~

  # def self.list_foods
  #   food_list = SearchService.print_foods
  #   @lists = food_list.map do |food_stuff|
  #     Food.new(food_stuff)
  #   end
  # end
