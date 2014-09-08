require 'faraday'
require 'apis/response/feed_parser'

module Apis
  # Client for the Apis API
  #
  # @see http://docs.apis.is/
  class Client
    # Apis.is url prefix
    URL_PREFIX = 'http://apis.is'

    # Apis.is Farafay Connection
    #
    # @return [Faraday::Connection]
    def agent
      Faraday.new(URL_PREFIX) do |fara|
        fara.use Apis::Response::FeedParser
        fara.adapter Faraday.default_adapter
      end
    end

    # Make a HTTP GET request
    #
    # @param url [String] The path, relative to the url prefix
    # @return [Faraday::Response]
    def get(path)
      agent.get(path).body
    end
  end
end
