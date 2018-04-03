require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params[:puppy_name]
    @breed = params[:puppy_breed]
    @age = params[:puppy_age]
    erb :display_puppy
  end


end
