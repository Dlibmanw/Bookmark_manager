feature "visit BookMark page" do
    scenario 'view Bookmarks' do
        visit '/bookmarks'
        expect(page).to have_content "https://www.facebook.com/"
        expect(page).to have_content "https://www.google.com/"
        expect(page).to have_content "https://www.youtube.com/"
    end
end