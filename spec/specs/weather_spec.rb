require 'helper'

describe 'weather' do

  describe 'text' do
    it 'should return res status 200' do
      VCR.use_cassette('weather_texts') do
        res = Apis.weather.texts([2, 3, 5])
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'observations' do
    it 'should return res status 200' do
      VCR.use_cassette('weather_observations') do
        res = Apis.weather.observations([361, 2428])
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'forecasts' do
    it 'should return res status 200' do
      VCR.use_cassette('weather_forecast') do
        res = Apis.weather.forecasts([361, 2428])
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end
end
