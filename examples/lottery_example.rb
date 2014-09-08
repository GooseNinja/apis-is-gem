require 'apis'

# Possible Lottery calls
#
# Apis.lottery.lotto <- Fetch all lotto results
# Apis.lottery.vikingalotto <- Fetch all vikingalotto results
# Apis.lottery.eurojackpot <- Fetch all eurojackpot results

response = Apis.lottery.lotto

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     date:String,
#     lotto:String,
#     joker:String,
#     prize:String,
#     link:String
#   }
# ]
