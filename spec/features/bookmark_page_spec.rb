feature "visit BookMark page" do
    scenario 'view Bookmar' do
        visit '/bookmarks'
        expect(page).to have_content "Here are your BookMarks"
    end
end