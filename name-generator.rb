require 'sinatra'

get '/' do
  erb :index, :locals => { :name => "Fluffy Giggle" }
end
