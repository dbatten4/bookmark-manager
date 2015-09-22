require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarksWeb < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :'index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
