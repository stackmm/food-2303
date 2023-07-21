require 'rails_helper'

RSpec.describe FoodService do
  it 'establishes a connection and obtains a food item' do
    food = FoodService.get_food('banana')

    expect(food).to be_a(Hash)
    expect(food[:foods]).to be_an(Array)
    expect(food[:foods].first).to have_key(:gtinUpc)
    expect(food[:foods].first).to have_key(:description)
    expect(food[:foods].first).to have_key(:brandOwner)
    expect(food[:foods].first).to have_key(:ingredients)
  end

  it 'establishes a connection and obtains a food item by id' do
    banana = FoodService.get_food_details(2012128)

    expect(banana).to be_a(Hash)
    expect(banana).to have_key(:description)
    expect(banana).to have_key(:fdcId)
    expect(banana).to have_key(:brandOwner)
    expect(banana).to have_key(:ingredients)
  end
end