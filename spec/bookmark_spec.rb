describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      Bookmarks.create('http://www.google.com')
      Bookmarks.create('http://www.makersacademy.com')
      Bookmarks.create('http://www.twitter.com')
      
      bookmarks = Bookmarks.all
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.twitter.com')     
    end    
  end
  describe '#create' do
    it 'Adds a new bookmark' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      Bookmarks.create('http://www.gmail.com')
      expect(Bookmarks.all).to include('http://www.gmail.com')
    end
  end
end