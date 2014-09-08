require 'apis/client'

module Apis
  # Class to fetch currency
  class Currency
    # Get currency data from Arion
    #
    # @return [Faraday::Response] Api result.
    def arion
      Apis.client.get('/currency/arion')
    end

    # Get currency data from m5
    #
    # @return [Faraday::Response] Api result.
    def m5
      Apis.client.get('/currency/m5')
    end

    # Get currency data from Landsbankinn
    #
    # @return [Faraday::Response] Api result.
    def lb
      Apis.client.get('/currency/lb')
    end
  end
end
