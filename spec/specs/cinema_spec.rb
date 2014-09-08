require 'helper'

describe 'cinema' do
  it 'should return res status 200' do
    VCR.use_cassette('cinema_showtimes') do
      res = Apis.cinema.showtimes
      expect(res).to be_a_kind_of(Hash)
    end
  end

  describe 'cinema/theaters' do
    it 'should return res status 200' do
      VCR.use_cassette('cinema_theaters') do
        res = Apis.cinema.theaters
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end
end
