require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food' do 
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end

end

# If you create a text field input with <input type="text" name="favorite_food">, whenever the user submits that form, you will be able to access the data entered into the Favorite Foods text box via params[:favorite_food]

# data submitted through a form is passed in the form of a hash
# params = {
#   :name => "Sam",
#   :favorite_food => "Green Eggs and Ham"
# }

