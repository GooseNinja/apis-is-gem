require 'apis'

# Possible Particulates calls
#
# Apis.particulates <- Get Particulates data in Reykjavik

response = Apis.particulates

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     PM10nuna: String,
#     PM10medaltal: String,
#     Counter: String,
#     Dags: String,
#     nanariuppl: String
#   }
# ]
