require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/elements/:id" do
  id = params[:id]
  @element = Element.find(id)
  halt erb(:show_element)
end

get "/cities/:id" do
  id = params[:id]
  @city = WorldCity.find(id)
  halt erb(:show_city)
end

get "/create-element" do
  Element.create! name: "Carbon"
  halt erb(:index)
end

get "/cities/:id/double-population" do
  id = params[:id]
  @city = WorldCity.find(id)
  @city.population_in_millions = 
    @city.population_in_millions.*(2)
  @city.save!
  halt erb(:show_city)
end