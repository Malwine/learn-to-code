require 'sinatra'

def choose_random_name
  ["Exciting Eraser", "Sunny Beans", "Rainbow Trumpet"].sample
end

get '/' do
  erb :index, :locals => { :first_name_input => params[:first_name_input], :name => choose_random_name }
end

post '/' do
  name = params[:first_name_input]
  
  erb :index, :locals => { :first_name_input => params[:first_name_input],
                           :name => name}
end
