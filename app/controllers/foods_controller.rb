class FoodsController < ApplicationController

  def index
    ingredient = params[:q]

    @foods = FoodFacade.ingredient_matcher(ingredient)
  end
end
