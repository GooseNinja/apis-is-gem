require 'apis/client'

module Apis
  # Class to fetch lottery
  class Lottery
    # Get the most recent numbers for the icelandic lottery.
    #
    # @return [Faraday::Response] Api result.
    def lotto
      Apis.client.get('/lottery')
    end

    # Get the most recent numbers for the Vikingalotto.
    #
    # @return [Faraday::Response] Api result.
    def vikingalotto
      Apis.client.get('/lottery/vikingalotto')
    end

    # Get the most recent numbers for the Eurojackpot.
    #
    # @return [Faraday::Response] Api result.
    def eurojackpot
      Apis.client.get('/lottery/eurojackpot')
    end
  end
end
