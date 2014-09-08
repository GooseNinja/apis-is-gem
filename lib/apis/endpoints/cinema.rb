require 'apis/client'

module Apis
  # Class to fetch cinema
  class Cinema
    # Get a list of showtimes in icelandic movie theaters;
    # sort by movies
    #
    # @return [Faraday::Response] Api result.
    def showtimes
      Apis.client.get('/cinema')
    end

    # Get a list of showtimes in icelandic movie theaters;
    # sort by theater
    #
    # @return [Faraday::Response] Api result.
    def theaters
      Apis.client.get('/cinema/theaters')
    end
  end
end
