require 'rails_helper'

RSpec.describe 'Welcome Page' do
  describe 'As a user, when I visit / ' do
    it 'displays a search form and button' do
      visit root_path

      expect(page).to have_field(:q, type: 'text')
      expect(page).to have_button('Search')
    end

    it 'searches for the query when I fill out the form and click Search' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'

      expect(current_path).to eq(foods_path)
    end
  end
end