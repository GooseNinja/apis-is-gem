require 'apis'

# Possible CycleCounter calls
#
# Apis.cyclecounter <- Fetches data from the CycleCounter in Reykjavik

response = Apis.cyclecounter

# prints out all results
puts response[:results]

# Result:
# [
#   {
#     DayCount: String,
#     YearCount: String,
#     Time: String,
#     Date: String
#   }
# ]
