require 'helper'

describe 'tv' do
  describe 'tv/ruv' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_ruv') do
        res = Apis.tv.ruv
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/ruvithrottir' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_ruvithrottir') do
        res = Apis.tv.ruvithrottir
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/stod2' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_stod2') do
        res = Apis.tv.stod2
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/stod2sport' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_stod2sport') do
        res = Apis.tv.stod2sport
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/stod2sport2' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_stod2sport2') do
        res = Apis.tv.stod2sport2
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/stod2gull' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_stod2gull') do
        res = Apis.tv.stod2gull
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/stod2bio' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_stod2bio') do
        res = Apis.tv.stod2bio
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/stod3' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_stod3') do
        res = Apis.tv.stod3
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'tv/skjar1' do
    it 'should return res status 200' do
      VCR.use_cassette('tv_skjar1') do
        res = Apis.tv.skjar1
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end
end
