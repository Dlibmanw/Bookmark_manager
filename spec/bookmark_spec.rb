require 'spec_helper'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include("https://www.facebook.com/")
      expect(bookmarks).to include("https://www.google.com/")
      expect(bookmarks).to include("https://www.youtube.com/")
    end
  end
end