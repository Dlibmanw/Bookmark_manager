require 'sinatra/base'
class BookmarkManager < Sinatra::Base
    get '/' do
        'Welcome to the BookMark Manager'
    end

    run! if app_file ==$0
end