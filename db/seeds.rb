# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1.
puts "Cleaning movies database..."
Movie.destroy_all

# 2.
puts "Loading movies into database..."
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

# 3. Final message
puts "Finished! Created #{Movie.count} movies."


# require "json"
# require "rest-client"

# response = RestClient.get "https://tmdb.lewagon.com/movie/top_rated"
# response_items = JSON.parse(response)

# response_items.each do |item|
#   movie = Movie.new(
#     title: ,
#     overview: ,
#     poster_url: ,
#     rating: ,
#   )
#   movie.save
# end

# {"adult":false,"backdrop_path":"/zfbjgQE1uSd9wiPTX4VzsLi0rGG.jpg","genre_ids":[18,80],"id":278,"original_language":"en","original_title":"The Shawshank Redemption","overview":"Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.","popularity":72.639,"poster_path":"/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg","release_date":"1994-09-23","title":"The Shawshank Redemption","video":false,"vote_average":8.708,"vote_count":27776}
