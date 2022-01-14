# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark'

# manages bookmarks
class BookmarkManager < Sinatra::Base
  enable 'sessions'

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @bookmarks = Bookmark.all
    
    erb :index
  end

  get '/add' do
    erb :add
  end

  post '/add' do
    Bookmark.add(title: params[:title], url: params[:url])
    
    redirect '/'
  end

  post '/delete' do
    Bookmark.delete(id: params[:delete_id])
    
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
