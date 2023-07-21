require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns a list of foods by search query' do
    potatoes = FoodFacade.search_food('sweet potatoes')

    expect(potatoes).to be_an(Array)
    expect(potatoes.first).to be_a(Food)
    expect(potatoes.first.gtinupc).to eq('8901020020844')
    expect(potatoes.first.description).to eq('SWEET POTATOES')
    expect(potatoes.first.brand_owner).to eq('NOT A BRANDED ITEM')
  end

  it 'returns the total number of results' do
    num_results = FoodFacade.total_results('sweet potatoes')

    expect(num_results).to eq(55579)
  end
end