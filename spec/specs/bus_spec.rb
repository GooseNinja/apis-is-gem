require 'helper'

describe 'busses' do
  it 'should return res status 200' do
    VCR.use_cassette('bus_all') do
      res = Apis.busses
      expect(res).to be_a_kind_of(Hash)
    end
  end

  it 'should return res status 200' do
    VCR.use_cassette('bus_selective') do
      res = Apis.busses([1, 2, 3, 4])
      expect(res).to be_a_kind_of(Hash)
    end
  end
end
