require 'apis'

# Possible Cinema calls
#
# Apis.cinema.showtimes <- Fetches all showtimes in iceland sorted by movies
# Apis.cinema.theaters <- Fetches all theaters in iceland

response = Apis.cinema.showtimes

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     title: String,
#     released: String,
#     restricted: String,
#     imdb: String,
#     imdbLink: String,
#     image: String,
#     showtimes: [
#       {
#         theater: String,
#         schedule: [
#           String,
#           String
#         ]
#       }
#     ]
#   }
# ]
