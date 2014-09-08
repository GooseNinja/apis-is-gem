require 'apis/client'

module Apis
  # Class to fetch flights
  class Flights
    # Get a list of all international flights departure
    # at Keflavik Airport today.
    #
    # @param lang [String] result language (optional)
    # @return [Faraday::Response] Api result.
    def departure(lang = 'is')
      Apis.client.get("/flight?type=departures&language=#{lang}")
    end

    # Get a list of all international flights arriving
    # at Keflavik Airport today.
    #
    # @param lang [String] result language (optional)
    # @return [Faraday::Response] Api result.
    def arrivals(lang = 'is')
      Apis.client.get("/flight?type=arrivals&language=#{lang}")
    end
  end
end
