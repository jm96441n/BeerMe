require 'rails_helper'

describe Beer, type: :model do
  let(:category) { double('Category') }
  let(:beer_style) { double('BeerStyle', category: category) }
  let(:brewery) { double('Brewery') }
  subject(:beer) { Beer.new() }

  describe '#get_random' do
    before do
      allow(Beer).to receive(:random).and_return(beer)
    end
    it 'should retrieve a random beer' do
      expect(Beer.random).to eql beer
    end
  end
end
