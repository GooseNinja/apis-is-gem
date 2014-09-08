require 'helper'

describe 'earthquake' do
  it 'should return res code 200' do
    VCR.use_cassette('earthquake') do
      res = Apis.earthquake
      expect(res).to be_a_kind_of(Hash)
    end
  end
end
