require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarksWeb < Sinatra::Base
  get '/' do
    'Hello BookmarksWeb!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
