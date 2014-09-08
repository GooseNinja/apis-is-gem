require 'helper'

describe 'flights' do

  describe 'departure' do
    it 'should return res status 200' do
      VCR.use_cassette('flights_departure') do
        res = Apis.flights.departure
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'arrivals' do
    it 'should return res status 200' do
      VCR.use_cassette('flights_arrivals') do
        res = Apis.flights.arrivals
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end
end
