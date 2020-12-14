require 'rails_helper'

RSpec.describe "Food Search" do
  scenario 'search_by_ingredient_spec' do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on 'Search'
    expect(current_path).to eq('/foods')
    expect(page).to have_content('Search Results: 50')
    expect(page).to have_css('.foods', count: 10)
    within(first('.foods')) do
      expect(page).to have_css('.upc_code')
      expect(page).to have_css('.description')
      expect(page).to have_css('.brand_owner')
      expect(page).to have_css('.ingredients')
    end
  end
end
