require 'helper'

describe 'currency' do
  describe 'currency/m5' do
    it 'should return res status 200' do
      VCR.use_cassette('currency_m5') do
        res = Apis.currency.m5
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'currency/arion' do
    it 'should return res status 200' do
      VCR.use_cassette('currency_arion') do
        res = Apis.currency.arion
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'currency/lb' do
    it 'should return res status 200' do
      VCR.use_cassette('currency_lb') do
        res = Apis.currency.lb
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end
end
