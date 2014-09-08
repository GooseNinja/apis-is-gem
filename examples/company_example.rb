require 'apis'

# Possible Company calls
#
# Apis.companies.by_name(String) <- Fetches all active busses
# Apis.companies.by_address(String) <- Fetches all busses by bus number
# Apis.companies.by_sn(String) <- Fetches all active busses
# Apis.companies.by_vsknr(String) <- Fetches all busses by bus number

response = Apis.companies.by_name('SomeName')

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     name: String,
#     sn: String,
#     active: Integer,
#     address: String
#   }
# ]
