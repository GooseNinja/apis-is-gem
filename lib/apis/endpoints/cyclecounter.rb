require 'apis/client'

module Apis
  # Class to fetch cyclecounter
  class CycleCounter
    # Get current status of bicycle counters in Iceland,
    # currently only one located by Sudurlandsbraut in Reykjavik.
    #
    # @return [Faraday::Response] Api result.
    def cyclecounter
      Apis.client.get('/cyclecounter')
    end
  end
end
