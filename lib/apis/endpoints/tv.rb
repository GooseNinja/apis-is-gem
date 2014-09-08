require 'apis/client'

module Apis
  # Class to fetch tv
  class Tv
    # Get today's schedule from RUV
    #
    # @return [Faraday::Response] Api result.
    def ruv
      Apis.client.get('/tv/ruv')
    end

    # Get today's schedule from RUV ITHROTTIR
    #
    # @return [Faraday::Response] Api result.
    def ruvithrottir
      Apis.client.get('/tv/ruvithrottir')
    end

    # Get today's schedule from Stod 2
    #
    # @return [Faraday::Response] Api result.
    def stod2
      Apis.client.get('/tv/stod2')
    end

    # Get today's schedule from Stod 2 sport
    #
    # @return [Faraday::Response] Api result.
    def stod2sport
      Apis.client.get('/tv/stod2sport')
    end

    # Get today's schedule from Stod 2 sport 2
    #
    # @return [Faraday::Response] Api result.
    def stod2sport2
      Apis.client.get('/tv/stod2sport2')
    end

    # Get today's schedule from Stod 2 gull
    #
    # @return [Faraday::Response] Api result.
    def stod2gull
      Apis.client.get('/tv/stod2gull')
    end

    # Get today's schedule from Stod 2
    #
    # @return [Faraday::Response] Api result.
    def stod2bio
      Apis.client.get('/tv/stod2bio')
    end

    # Get today's schedule from Stod 3
    #
    # @return [Faraday::Response] Api result.
    def stod3
      Apis.client.get('/tv/stod3')
    end

    # Get today's schedule from Skjar 1
    #
    # @return [Faraday::Response] Api result.
    def skjar1
      Apis.client.get('/tv/skjar1')
    end
  end
end
