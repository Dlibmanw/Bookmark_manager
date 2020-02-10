require 'sinatra/base'
class BookmarkManager < Sinatra::Base

    get '/' do
        'Welcome to the BookMark Manager'
    end

    get '/bookmarks' do
        bookmarks = ["https://www.facebook.com/", "https://www.google.com/", "https://www.youtube.com/"]
    erb :'bookmarks/index'
    end

    run! if app_file ==$0
end