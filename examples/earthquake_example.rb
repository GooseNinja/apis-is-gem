require 'apis'

# Possible Earthquake calls
#
# Apis.earthquake <- Fetches all earthquake activity from the last 48hours

response = Apis.earthquake

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     timestamp: Date,
#     latitude: Float,
#     longitude: Float,
#     depth: Float,
#     size: Float,
#     quality: Float,
#     humanReadableLocation: String
#   }
# ]
