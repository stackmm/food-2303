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
end