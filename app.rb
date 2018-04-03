require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/puppy/new' do
    erb :create_puppy
  end

  post "/puppy" do
    # this is where the puppy is created
    @puppy = Puppy.create(params[:puppy])
    redirect "/puppy/#{@puppy.id}"
  end

  get '/puppy/:id' do
    @puppy = Puppy.find(params[:id])
    erb :display_puppy
  end


end
