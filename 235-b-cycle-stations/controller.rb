require './davinci-sinatra.rb'

get "/" do
  @stations = Station.order(:id)
  halt erb(:index)
end

get "/existing" do
  @stations = Station.where(status: "existing")
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/private" do
  @stations = Station.where(property_type: "private")
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/zip/:zip_code" do
  zip_code = params["zip_code"]
  @stations = Station.where(zip_code: zip_code)
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/street/Broadway" do
  @stations = Station.where("address1 ilike ?", "%Broadway%")
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/street/17th" do
  @stations = Station.where("address1 ilike ?", "%17th%")
  # TODO: Assign to @stations variable
  halt erb(:index)
end
