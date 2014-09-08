require 'apis'

# Possible Currency calls
#
# Apis.currency.m5 <- Get currency data from M5
# Apis.currency.arion <- Get currency data from Arion
# Apis.currency.lb <- Get currency data from Landsbankinn

response = Apis.currency.m5

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     shortName: String,
#     longName: String,
#     value: Float,
#     askValue: Integer,
#     bidValue: Integer,
#     changeCur: Float,
#     changePer: Float
#   }
# ]
