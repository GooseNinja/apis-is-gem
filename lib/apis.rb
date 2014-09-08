require 'apis/client'
require 'apis/endpoints/tv'
require 'apis/endpoints/bus'
require 'apis/endpoints/cars'
require 'apis/endpoints/cinema'
require 'apis/endpoints/flights'
require 'apis/endpoints/lottery'
require 'apis/endpoints/weather'
require 'apis/endpoints/currency'
require 'apis/endpoints/companies'
require 'apis/endpoints/earthquake'
require 'apis/endpoints/cyclecounter'
require 'apis/endpoints/particulates'

# Ruby wrapper for the apis.is API
module Apis
  class << self
    # API Client
    #
    # @return [Apis::Client] API wrapper
    def client
      Apis::Client.new
    end

    # API CycleCounter
    #
    # @return [Apis::CycleCounter] API wrapper
    def cyclecounter
      Apis::CycleCounter.new.cyclecounter
    end

    # API Earthquake
    #
    # @return [Apis::Earthquake] API wrapper
    def earthquake
      Apis::Earthquake.new.earthquake
    end

    # API Currency
    #
    # @return [Apis::Currency] API wrapper
    def currency
      Apis::Currency.new
    end

    # API Cinema
    #
    # @return [Apis::Cinema] API wrapper
    def cinema
      Apis::Cinema.new
    end

    # API Particulates
    #
    # @return [Apis::Particulates] API wrapper
    def particulates
      Apis::Particulates.new.particulates
    end

    # API Lottery
    #
    # @return [Apis::Lottery] API wrapper
    def lottery
      Apis::Lottery.new
    end

    # API Busses
    #
    # @return [Apis::Busses] API wrapper
    def busses(params = [])
      Apis::Busses.new.realtime(params)
    end

    # API Cars
    #
    # @return [Apis::Cars] API wrapper
    def car(number)
      Apis::Cars.new.car(number)
    end

    # API Companies
    #
    # @return [Apis::Companies] API wrapper
    def companies
      Apis::Companies.new
    end

    # API Tv
    #
    # @return [Apis::Tv] API wrapper
    def tv
      Apis::Tv.new
    end

    # API Flights
    #
    # @return [Apis::Flights] API wrapper
    def flights
      Apis::Flights.new
    end

    # API Weather
    #
    # @return [Apis::Weather] API wrapper
    def weather
      Apis::Weather.new
    end
  end
end
