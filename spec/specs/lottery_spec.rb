require 'helper'

describe 'lottery' do
  describe 'lotto' do
    it 'should return res status 200' do
      VCR.use_cassette('lottery_lotto') do
        res = Apis.lottery.lotto
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'lottery/vikingalotto' do
    it 'should return res status 200' do
      VCR.use_cassette('lottery_vikingalotto') do
        res = Apis.lottery.vikingalotto
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'lottery/eurojackpot' do
    it 'should return res status 200' do
      VCR.use_cassette('lottery_eurojackpot') do
        res = Apis.lottery.eurojackpot
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end
end
