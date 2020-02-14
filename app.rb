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
    
    get '/bookmarks/new' do
        erb :"bookmarks/new"
      end

    post '/bookmarks' do
        url = params['url']
        title = params['title']
        Bookmarks.create(url, title)
        redirect '/bookmarks'
    end
end