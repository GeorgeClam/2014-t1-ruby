require './davinci-sinatra.rb'

get "/" do
  halt erb(:browse)
end

get "/year/:year" do
  year = params["year"]
  @books = Book.where(publication_year: year)
  @header = "Books from #{year}:"
  halt erb(:search_results)
end

get "/author/:last_name" do
  last_name = params["last_name"]
  @books = Book.where("author ilike ?", "%#{last_name}")
  @header = "Books by #{last_name}:"
  halt erb(:search_results)
end

get "/topic/:topic" do
  topic = params["topic"]
  @books = Book.where("title ilike ?", "%#{topic}%")
  @header = "Books about #{topic}:"
  halt erb(:search_results)
end

get "/isbn/:isbn" do
  isbn = params["isbn"]
  @books = Book.find_by(isbn: isbn)
  halt erb(:show)
end




## TODO: GET handler for routes like /year/2011, /year/2007, etc.

## TODO: GET handler for routes like /author/Olsen,
##      /author/Crockford, etc.

## TODO: GET handler for routes like /topic/jQuery, /topic/CSS, etc.

# TODO: GET handler for routes like /isbn/1449397220, 
#       /isbn/1449325947, etc.
