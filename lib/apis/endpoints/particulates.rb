require 'apis/client'

module Apis
  # Class to fetch particulates
  class Particulates
    # Get current status of particulates in Reykjavik City
    #
    # @return [Faraday::Response] Api result.
    def particulates
      Apis.client.get('/particulates')
    end
  end
end
