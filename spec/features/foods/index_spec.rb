require 'rails_helper'

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient (for example "sweet potatoes")

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
RSpec.describe 'Foods Index Page' do
  describe 'As a user, when I visit /foods' do
    it 'displays a total number of items returned by the search' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'

      expect(current_path).to eq(foods_path)
      expect(page).to have_content('Total Results: 50')
      save_and_open_page
    end

    it 'displays a list of ten foods that contain the ingredient' do

    end

    it 'displays the GTIN/UPC code for each food' do

    end

    it 'displays the description for each food' do

    end

    it 'displays the Brand Owner for each food' do

    end

    it 'displays the ingredients for each food' do

    end
  end
end