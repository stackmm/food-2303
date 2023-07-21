require 'rails_helper'

RSpec.describe 'Foods Index Page' do
  describe 'As a user, when I visit /foods' do
    before(:each) do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'
    end
    
    it 'displays a total number of items returned by the search' do
      expect(page).to have_content('Total Results: 55579')
    end

    it 'displays the GTIN/UPC code for each of the ten food' do
      expect(page).to have_content('GTIN/UPC')
      expect(page).to have_content('8901020020844')
      expect(page).to have_content('832298010009')
      expect(page).to have_content('076700002019')
      expect(page).to have_content('046567926179')
      expect(page).to have_content('070560951975')
      expect(page).to have_content('826561500014')
      expect(page).to have_content('819614010035')
      expect(page).to have_content('095829400193')
      expect(page).to have_content('757404000104')
      expect(page).to have_content('638882125773')
    end

    it 'displays the description for each of the ten food' do
      expect(page).to have_content('Description')
      expect(page).to have_content('SWEET POTATOES')
    end

    it 'displays the Brand Owner for each of the ten food' do
      expect(page).to have_content('Brand Owner')
      expect(page).to have_content('NOT A BRANDED ITEM')
      expect(page).to have_content("Raley's")
      expect(page).to have_content('The Pictsweet Company')
      expect(page).to have_content('Spring Acres Sales Company Inc.')
      expect(page).to have_content('BAKO SWEET')
      expect(page).to have_content('C.H. Robinson Company')
      expect(page).to have_content('Southern Produce Distributors, Inc.')
      expect(page).to have_content('Stahlbush Island Farms, Inc.')
    end

    it 'displays the ingredients for each of the ten food' do
      expect(page).to have_content('Ingredients')
      expect(page).to have_content('SWEET POTATOES.')
      expect(page).to have_content('ORGANIC SWEET POTATOES.')
    end
  end
end