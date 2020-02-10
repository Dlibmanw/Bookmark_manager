require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

    get '/' do
        'Welcome to the BookMark Manager'
    end

    get '/bookmarks' do
        @bookmarks = Bookmarks.all
        erb(:'bookmarks/index')
    end
    
end