require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns a list of foods by search query' do
    bananas = FoodFacade.search_food('banana')

    expect(bananas).to be_an(Array)
    expect(bananas.first).to be_a(Food)
    expect(bananas.first.gtinupc).to eq('016459200441')
    expect(bananas.first.description).to eq('BANANA')
    expect(bananas.first.brand_owner).to eq('Wonder Natural Foods Corp')
  end
end