require 'sinatra/base'
class BookmarkManager < Sinatra::Base

    get '/' do
        'Welcome to the BookMark Manager'
    end

    get '/bookmarks' do
        'Here are your BookMarks'
    end

    run! if app_file ==$0
end