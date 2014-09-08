require 'helper'

describe 'cyclecounter' do
  it 'should be of type hash' do
    VCR.use_cassette('cyclecounter') do
      res = Apis.cyclecounter
      expect(res).to be_a_kind_of(Hash)
    end
  end
end
