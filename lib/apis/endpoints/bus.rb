require 'apis/client'

module Apis
  # Class to fetch busses
  class Busses
    # Real-time location of busses.
    # Results are only shown for active busses.
    #
    # @param busses [Array] List of requested busses (optional)
    # @return [Faraday::Response] Api result.
    def realtime(busses)
      Apis.client.get("/bus/realtime?busses=#{busses.join(',')}")
    end
  end
end
