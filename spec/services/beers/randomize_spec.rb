require 'rails_helper'

describe Beers::Randomize, type: :service do
  let(:category) { double('Category') }
  let(:beer_style) { double('BeerStyle', category: category) }
  let(:brewery) { double('Brewery') }
  let(:beer1) { Beer.new(name: 'Beer 1', id: 1, abv: 6.7, ibu: 92, brewery_id: 1) }
  let(:beer2) { Beer.new(name: 'Beer 2', id: 2, abv: 4.5, ibu: 85, brewery_id: 2) }
  let(:beer3) { Beer.new(name: 'Beer 3', id: 3, abv: 9.6, ibu: 93, brewery_id: 3) }
  let(:beer) { Beer.new(id: 4) }
  subject(:service) { Beers::Randomize.new }

  it 'should respond to call and return a result object with a beer' do
    allow(service).to receive(:select_random_id).and_return(4)
    allow(Beer).to receive(:find).and_return(beer)
    result = service.call()
    expect(result.model).to eq(beer)
  end
end
