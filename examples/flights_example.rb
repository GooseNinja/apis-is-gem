require 'apis'

# Possible Flights calls
#
# Apis.flights.departure(lang = 'is') <- Fetches all departure flights
# Apis.flights.arrivals(lang = 'is') <- Fetches all arrivals

response = Apis.flights.departure

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     date: String,
#     flightNumber: String,
#     airline: String,
#     from: String,
#     plannedArrival: String,
#     realArrival: String,
#     status: String,
#     to: String
#   }
# ]
