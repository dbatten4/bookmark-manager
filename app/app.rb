require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarksWeb < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'index'
  end

  post '/links' do
    link = Link.new(url: params[:url], title: params[:title])
    tag = Tag.create(name: params[:tag])
    link.tags << tag
    link.save
    redirect "/links"
  end

  get '/links/new' do 
    erb :new_link
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
