require 'apis/client'

module Apis
  # Class to fetch earthquake
  class Earthquake
    # Get earthquake monitoring data for the last 48 hours.
    #
    # @return [Faraday::Response] Api result.
    def earthquake
      Apis.client.get('/earthquake/is')
    end
  end
end
