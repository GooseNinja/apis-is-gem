require 'helper'

describe 'companies' do

  describe 'by name' do
    it 'should return res status 200' do
      VCR.use_cassette('companies_by_name') do
        res = Apis.companies.by_name('hagur')
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'by address' do
    it 'should return res status 200' do
      VCR.use_cassette('companies_by_address') do
        res = Apis.companies.by_address('Aðallandi')
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'by socialnumber' do
    it 'should return res status 200' do
      VCR.use_cassette('companies_by_socialnumber') do
        res = Apis.companies.by_sn('5210992759')
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end

  describe 'by vsknr' do
    it 'should return res status 200' do
      VCR.use_cassette('companies_by_vsknr') do
        res = Apis.companies.by_vsknr('95710')
        expect(res).to be_a_kind_of(Hash)
      end
    end
  end
end
