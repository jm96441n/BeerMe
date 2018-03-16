require 'rails_helper'

RSpec.describe Beers::ShowSerializer, type: :serializer do
  let(:category) { create(:category, name: 'Test Cat', id: 1) }
  let(:beer_style) { create(:beer_style, name: 'Test Style', id: 1, category: category) }
  let(:brewery) { create(:brewery, name: 'Test Brewery', id: 1) }
  let(:beer) { create(:beer, name: 'Beer 1', id: 1, abv: 6.7, ibu: 92, brewery_id: 1, category: category, beer_style: beer_style, brewery: brewery, description: "This is the description for Beer 1") }

  before do
    @serializer = Beers::ShowSerializer.new(beer)
    @serialization = ActiveModelSerializers::Adapter.create(@serializer, adapter: :json_api)
  end

  let(:serialized_json) { JSON.parse(@serialization.to_json)['data'] }

  context 'beer response' do
    subject { serialized_json['attributes'] }

    it 'should return the beers name' do
      expect(subject['name']).to eql(beer.name)
    end

    it 'should return the beers abv' do
      expect(subject['abv']).to eql(beer.abv)
    end

    it 'should return the beers ibu' do
      expect(subject['ibu']).to eql(beer.ibu)
    end

    it 'should return the beers description' do
      expect(subject['description']).to eql(beer.description)
    end
  end

  context 'relationships' do
    subject { serialized_json['relationships'] }

    context 'category' do
      it 'should return the beers category name' do
        expect(subject['category']['data']['name']).to eql(category.name)
      end
    end

    context 'beer_style' do
      it 'should return the beers beer_style name' do
        expect(subject['beer-style']['data']['name']).to eql(beer_style.name)
      end
    end

    context 'brewery' do
      it 'should return the beers brewery name' do
        expect(subject['brewery']['data']['name']).to eql(brewery.name)
      end

      it 'should return the beers brewery description' do
        expect(subject['brewery']['data']['description']).to eql(brewery.description)
      end
    end
  end
end
