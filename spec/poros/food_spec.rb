require 'rails_helper'

RSpec.describe Food do
  before(:each) do
    @food = Food.new({gtinUpc: "016459200441", 
                      description: "BANANA",
                      brandOwner: "Wonder Natural Foods Corp",
                      ingredients: "PEANUTS (AS DEFATTED PEANUT FLOUR, PEANUT BUTTER AND NATURAL PEANUT OILS"})
  end

  it 'exists' do
    expect(@food).to be_a(Food)
  end

  it 'has attributes' do
    expect(@food.gtinupc).to eq("016459200441")
    expect(@food.description).to eq("BANANA")
    expect(@food.brand_owner).to eq("Wonder Natural Foods Corp")
    expect(@food.ingredients).to eq("PEANUTS (AS DEFATTED PEANUT FLOUR, PEANUT BUTTER AND NATURAL PEANUT OILS")
  end
end