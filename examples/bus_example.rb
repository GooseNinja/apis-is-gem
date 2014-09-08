require 'apis'

# Possible Busses calls
#
# Apis.busses <- Fetches all active busses
# Apis.busses(Array) <- Fetches all busses by bus number

response = Apis.busses([1, 4, 14])

# prints out active busses number 1, 4 and 14
puts response[:results]

# Result:
# [
#   {
#     busNr: String,
#     busses: [
#       {
#       unixTime: Integer,
#       x: Float,
#       y: Float,
#       from: String,
#       to: String
#       }
#     ]
#   }
# ]
