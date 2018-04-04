require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/show' do
    # @puppy = params[:puppy]
    # @name = @puppy["name"]
    # @breed = @puppy["breed"]
    # @age = @puppy["age"]
    @name = params["name"]
    @breed = params["breed"]
    @age = params["age"]

    @new_pup = Puppy.new(@name, @breed, @age)

    erb :display_puppy
  end
end
