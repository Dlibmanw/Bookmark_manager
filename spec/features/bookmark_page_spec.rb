require 'pg'
feature "visit BookMark page" do
    scenario 'view Bookmarks' do

        Bookmarks.create("http://www.makersacademy.com")
        Bookmarks.create("http://www.twitter.com")
        Bookmarks.create("http://www.google.com")
        
        visit '/bookmarks'

        expect(page).to have_content "http://www.makersacademy.com"
        expect(page).to have_content "http://www.google.com"
        expect(page).to have_content "http://www.twitter.com"
    end
end