require 'helper'

describe 'particulates' do
  it 'should return res code 200' do
    VCR.use_cassette('particulates') do
      res = Apis.particulates
      expect(res).to be_a_kind_of(Hash)
    end
  end
end
