require 'rails_helper'

describe Beer, type: :model do
  subject(:beer) { Beer.new }
  let(:category) { double('Category') }
  let(:beer_style) { double('BeerStyle', category: category) }
  let(:brewery) { double('Brewery') }

  allow(beer).to receive(:beer_style).and_return(beer_style)

  describe '.category' do
    it 'returns the beers category' do
      expect(beer.category).to eql category
    end

    it 'returns the category of the beers beer style' do
      expect(beer.category).to eql beer_style.category
    end
  end
end
