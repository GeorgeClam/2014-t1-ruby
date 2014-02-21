require './davinci-sinatra.rb'

get "/" do
  @goats = RacingGoat.all
  halt erb(:index)
end

get "/new_goat" do
  @goats = RacingGoat.new
  halt erb(:edit_or_new)
end

post "/new_goat" do
  @goats = RacingGoat.new
  @goats.name = params["name"]
  @goats.gender = params["gender"]
  @goats.best_100m_time = params["time"]
  @goats.dietary_preference = params["diet"]
  @goats.save!
  redirect "/"
end

get "/goats/:id" do
  id = params["id"]
  @goats = RacingGoat.find(id)
  halt erb(:edit_or_new)
end

post "/goats/:id" do
  id = params["id"]
  @goats = RacingGoat.new
  @goats.name = params["name"]
  @goats.gender = params["gender"]
  @goats.best_100m_time = params["time"]
  @goats.dietary_preference = params["diet"]
  @goats.save!
  redirect "/"
end