require 'apis/client'

module Apis
  # Class to fetch companies
  class Companies
    # Search the icelandic company registry by name
    #
    # @param name [String] company name (required)
    # @return [Faraday::Response] Api result.
    def by_name(name)
      Apis.client.get("/company?name=#{name}")
    end

    # Search the icelandic company registry by address
    #
    # @param address [String] company address (required)
    # @return [Faraday::Response] Api result.
    def by_address(address)
      Apis.client.get("/company?address=#{address}")
    end

    # Search the icelandic company registry by social number
    #
    # @param socialnumber [String] company socialnumber (required)
    # @return [Faraday::Response] Api result.
    def by_sn(socialnumber)
      Apis.client.get("/company?socialnumber=#{socialnumber}")
    end

    # Search the icelandic company registry by vsk number
    #
    # @param vsknr [String] company vsknumer (required)
    # @return [Faraday::Response] Api result.
    def by_vsknr(vsknr)
      Apis.client.get("/company?vsknr=#{vsknr}")
    end
  end
end
