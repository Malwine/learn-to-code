require 'sinatra'

def choose_random_name
  ["Exciting Eraser", "Sunny Beans", "Fluffy Giggle"].sample
end

def pick_name(name)
  name_hash = { 'a' => 'Amazing',
                'b' => 'Best',
                'c' => 'Cute',
                'm' => 'Magnificent'}

  first_letter = name[0].downcase

  if name_hash.has_key?(first_letter)
    name_hash[first_letter] + " " + choose_random_name
  else
    "Super #{name.capitalize}"
  end
end

get '/' do
  erb :index, :locals => { :first_name_input => params[:first_name_input], :name => choose_random_name }
end

post '/' do
  name = params[:first_name_input]

  erb :index, :locals => { :first_name_input => params[:first_name_input],
                           :name => pick_name(name) }
end
