# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark'

# manages bookmarks
class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome to Bookmark Manager!'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all

    erb :'bookmarks/index'
  end

  run! if app_file == $PROGRAM_NAME
end
