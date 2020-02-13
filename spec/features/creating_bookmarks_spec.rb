feature 'Adding a new bookmark' do
    scenario 'A user can add a bookmark to Bookmark Manager' do
      visit('/bookmarks/new')
      fill_in('url', with: 'http://gmail.com')
      click_button('Submit')
  
      expect(page).to have_content 'http://gmail.com'
    end
  end