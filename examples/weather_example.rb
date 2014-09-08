require 'apis'

# Possible Weather calls
#
# Apis.weather.texts(types)
# Apis.weather.observations(stations, lang = 'is', time = '1h', anytime = '0')
# Apis.weather.forecasts(stations, lang = 'is')

Apis.weather.observations([361])

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     name:  String,
#     atime: String,
#     err: String,
#     link: String,
#     forecast: [
#       {
#         ftime: String,
#         F: String,
#         D: String,
#         T: String,
#         W: String,
#         N: String,
#         TD: String,
#         R: String
#       }
#     ]
#   }
# ]
