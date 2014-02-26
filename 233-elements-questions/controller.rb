require './davinci-sinatra.rb'

get "/" do
  halt erb(:questions)
end

post "/" do
  if params[""]
  @elements = Element.find_by(name: params[""])
  # TODO: fill out the @answer9 or @answer10 variables in response
  # to whatever the user entered.
  halt erb(:answer_to_9_or_10)
end
