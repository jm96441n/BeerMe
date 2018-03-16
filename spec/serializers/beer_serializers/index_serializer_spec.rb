require 'rails_helper'

RSpec.describe Beers::IndexSerializer, type: :serializer do
  let(:beer1) { create(:beer, name: 'Beer 1', id: 1, abv: 6.7, ibu: 72) }
  let(:beer2) { create(:beer, name: 'Beer 2', id: 2, abv: 5.7, ibu: 50) }
  let(:beer3) { create(:beer, name: 'Beer 3', id: 3, abv: 9.7, ibu: 98) }
  let(:beers) { [beer1, beer2, beer3] }

  before do
    @serialization = ActiveModel::Serializer::CollectionSerializer.new(beers, adapter: :json_api)
  end

  subject { JSON.parse(@serialization.to_json) }

  it 'should return a list of beers' do
    expect(subject.length).to eql(3)
  end

  it 'returns the beer names' do
    beer_names = subject.collect { |beer| beer['name'] }
    expect(beer_names).to eql beers.collect(&:name)
  end

  it 'returns the beer abv\'s' do
    beer_abvs = subject.collect { |beer| beer['abv'] }
    expect(beer_abvs).to eql beers.collect(&:abv)
  end

  it 'returns the beer ibu\'s' do
    beer_ibus = subject.collect { |beer| beer['ibu'] }
    expect(beer_ibus).to eql beers.collect(&:ibu)
  end
end
