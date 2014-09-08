require 'apis/client'

module Apis
  # Class to fetch weather
  class Weather
    # Get weather forecast for Iceland.
    #
    # @param stations [Array] list of stations (required)
    # @param lang [String] result language (optional)
    # @return [Faraday::Response] Api result.
    def forecasts(stations, lang = 'is')
      Apis.client.get("/weather/forecasts/#{lang}" \
        "/?stations=#{stations.join(',')}")
    end

    # Get weather observations for Iceland.
    #
    # @param stations [Array] list of stations (required)
    # @param lang [String] result language (optional)
    # @param time [String] 1h for automatic stations
    # or 3h for mixed data (optional)
    # @param anytime [String] (optional)
    # @return [Faraday::Response] Api result.
    def observations(stations, lang = 'is', time = '1h', anytime = '0')
      Apis.client.get("/weather/forecasts/#{lang}" \
        "/?stations=#{stations.join(',')}&time=#{time}&anytime=#{anytime}")
    end

    # Get weather information texts for Iceland.
    #
    # @param types [Array] list of types (required)
    # @return [Faraday::Response] Api result.
    def texts(types)
      Apis.client.get("/weather/texts?types=#{types.join(',')}")
    end
  end
end
