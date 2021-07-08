require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
    
  # form post throws the information to the server can catch that info because it has the same receiving addres (/food) and way of receivng data (post)

end