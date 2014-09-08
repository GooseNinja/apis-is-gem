require 'apis/client'

module Apis
  # Class to fetch cars
  class Cars
    # Search the icelandic vehicle registry
    #
    # @param number [String] Car number (required)
    # @return [Faraday::Response] Api result.
    def car(number)
      Apis.client.get("/car?number=#{number}")
    end
  end
end
