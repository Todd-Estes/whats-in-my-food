class FoodsController < ApplicationController

  def index
    ingredient = params[:q]
    require "pry"; binding.pry
  end
end
