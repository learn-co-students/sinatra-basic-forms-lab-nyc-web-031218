require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :create_puppy
    end

    post '/new' do
      # binding.pry
      # hash = {
      #   name: params[:name],
      #   breed: params[:breed],
      #   age: params[:age]
      #
      # }
      @puppy = Puppy.new(params[:name], params[:breed], params[:age])
      # binding.pry
      erb :display_puppy
    end
end
