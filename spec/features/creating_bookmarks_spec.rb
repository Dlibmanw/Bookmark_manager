require 'spec_helper'

feature 'Adding a new bookmark' do
    scenario 'A user can add a bookmark to Bookmark Manager' do
      visit('/bookmarks/new')
      fill_in('url', with: 'http://gmail.com')
      fill_in('title', with: 'Gmail')
      click_button('Submit')
      expect(page).to have_content 'http://gmail.com', 'Gmail'
    end
  end

