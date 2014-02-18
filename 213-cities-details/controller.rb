require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/details/:id" do
  id = params["id"]
  @city = WorldCity.find(id)
  halt erb(:show)
end