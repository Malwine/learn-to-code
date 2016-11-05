require 'sinatra'

get '/' do
  erb :index, :locals => { :name => "Awesome Orange" }
end
