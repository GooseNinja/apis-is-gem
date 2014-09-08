require 'apis'

# Possible Car calls
#
# Apis.car(string) <- Searches for car by number

response = Apis.car('SomeCarNumber')

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     registryNumber: String,
#     number: String,
#     factoryNumber: String,
#     type: String,
#     subType: String,
#     color: String,
#     registeredAt: String,
#     status: String,
#     nextCheck: String,
#     pollution: String,
#     weight: String
#   }
# ]
