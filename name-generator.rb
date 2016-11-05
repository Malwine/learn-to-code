require 'sinatra'

def choose_random_name
  ["Exciting Eraser", "Sunny Beans", "Rainbow Trumpet"].sample
end

get '/' do
  erb :index, :locals => { :name => choose_random_name }
end
