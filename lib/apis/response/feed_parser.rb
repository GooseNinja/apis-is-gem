require 'json'
require 'faraday'

module Apis
  # Response Module for faraday middleware
  module Response
    # Parses the response body to json
    class FeedParser < Faraday::Response::Middleware
      private

      def on_complete(env)
        env[:body] = JSON.parse env.body, symbolize_names: true
      end
    end
  end
end
