require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do

    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]  
    erb :display_puppy

  end

end




#In app.rb build out a GET request to load a homepage. The homepage should go to the main route /.
# The home page will also need a new view index.erb. This page should welcome you to the Puppy Adoption Site.
# Add this view to the controller action.


# Now we need to make sure the form is being submitted properly. You'll need to have a third controller action that
# takes the input from the user and renders a third view (views/display_puppy.erb) which displays the info for the
# puppy that was just created.
