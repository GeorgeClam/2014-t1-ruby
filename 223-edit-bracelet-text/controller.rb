require './davinci-sinatra.rb'

get "/" do
  @lines = BraceletLine.order(:id)
  halt erb(:index)
end

get "/lines/:id" do
  id = params["id"]
  @lines = BraceletLine.find(id)
  halt erb(:edit)
end

post "/" do
  @lines = BraceletLine.new
  @lines.font_size = params["font_size"]
  @lines.text = params["text"]
  @lines.save!
  redirect "/"
end