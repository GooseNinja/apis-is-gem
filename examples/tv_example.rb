require 'apis'

# Possible Tv calls
#
# Apis.tv.ruv <- Fetch tv schedule for RUV
# Apis.tv.ruvithrottir <- Fetch tv schedule for RUV Ithrottir
# Apis.tv.stod2 <- Fetch tv schedule for Stod 2
# Apis.tv.stod2sport <- Fetch tv schedule for Stod 2 Sport
# Apis.tv.stod2sport2 <- Fetch tv schedule for Stod 2 Sport 2
# Apis.tv.stod2gull <- Fetch tv schedule for Stod 2 Gull
# Apis.tv.stod2bio <- Fetch tv schedule for Stod 2 Bio
# Apis.tv.stod3 <- Fetch tv schedule for Stod 3
# Apis.tv.skjar1 <- Fetch tv schedule for Skjar 1

response = Apis.tv.ruv

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     title: String,
#     originalTitle: String,
#     duration: String,
#     description: String,
#     shortDescription: String,
#     live: Boolean,
#     premier: Boolean,
#     startTime: String,
#     aspectRatio: String,
#     series: {
#       episode: String,
#       series: String
#     }
#   }
# ]
