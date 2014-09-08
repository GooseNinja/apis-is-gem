require 'helper'

describe 'cars' do
  it 'should return res status 200' do
    VCR.use_cassette('car') do
      res = Apis.car('aa031')
      expect(res).to be_a_kind_of(Hash)
    end
  end
end
