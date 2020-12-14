require 'rails_helper'

describe 'Food Facade' do
  it 'returns search results' do
    ingredient = "sweet potatoes"
    result = FoodFacade.ingredient_matcher(ingredient)

    expect(result).to be_a(Array)
    expect(result.size).to eq(50)
    expect(result.first).to be_an_instance_of(Food)
  end
end
