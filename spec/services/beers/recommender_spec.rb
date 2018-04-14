require 'rails_helper'

describe Beers::Recommender, type: :service do
  let(:category) { double('Category') }
  let(:beer_style) { double('BeerStyle', category: category) }
  let(:brewery) { double('Brewery') }
  let(:beer1) { double('Beer', name: 'Beer 1', id: 1, brewery_id: 1, ibu: 56, abv: 7.0) }
  let(:beer) { double('Beer', name: 'Beer 4', id: 4, brewery_id: 3) }

  context 'beer only has ibu' do
    it 'should respond to call and return a result object with a beer' do
      allow(beer).to receive(:ibu).and_return(54)
      allow(beer).to receive(:abv).and_return(0)
      allow(beer).to receive(:category).and_return(nil)
      allow(beer).to receive(:beer_style).and_return(nil)
      allow(Beer).to receive(:where).with(ibu: 56, category: nil, beer_style: nil).and_return([beer1])
      service = Beers::Recommender.new(beer)
      allow(service).to receive(:change_for_ibu).and_return(2)
      result = service.call
      expect(result.model).to equal(beer1)
    end
  end

  context 'beer only has abv' do
    it 'should respond to call and return a result object with a beer' do
      allow(beer).to receive(:ibu).and_return(0)
      allow(beer).to receive(:abv).and_return(6.2)
      allow(beer).to receive(:category).and_return(nil)
      allow(beer).to receive(:beer_style).and_return(nil)
      allow(Beer).to receive(:where).with(abv: 7.0, category: nil, beer_style: nil).and_return([beer1])
      service = Beers::Recommender.new(beer)
      allow(service).to receive(:change_for_abv).and_return(0.8)
      result = service.call
      expect(result.model).to equal(beer1)
    end
  end

  context 'beer only has category' do
    it 'should respond to call and return a result object with a beer' do
      allow(beer).to receive(:ibu).and_return(0)
      allow(beer).to receive(:abv).and_return(0)
      allow(beer).to receive(:category).and_return(category)
      allow(beer).to receive(:beer_style).and_return(nil)
      allow(Beer).to receive(:where).with(category: category).and_return([beer1])
      service = Beers::Recommender.new(beer)
      result = service.call
      expect(result.model).to equal(beer1)
    end
  end

  context 'beer only has beer style' do
    it 'should respond to call and return a result object with a beer' do
      allow(beer).to receive(:ibu).and_return(0)
      allow(beer).to receive(:abv).and_return(0)
      allow(beer).to receive(:category).and_return(nil)
      allow(beer).to receive(:beer_style).and_return(beer_style)
      allow(Beer).to receive(:where).with(beer_style: beer_style).and_return([beer1])
      service = Beers::Recommender.new(beer)
      result = service.call
      expect(result.model).to equal(beer1)
    end
  end
end
