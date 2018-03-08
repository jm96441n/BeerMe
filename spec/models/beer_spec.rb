require 'rails_helper'

describe Beer, type: :model do
  let(:category) { double('Category') }
  let(:beer_style) { double('BeerStyle', category: category) }
  let(:brewery) { double('Brewery') }
  let(:beer1) { Beer.new(name: 'Beer 1', id: 1, abv: 6.7, ibu: 92, brewery_id: 1) }
  let(:beer2) { Beer.new(name: 'Beer 2', id: 2, abv: 4.5, ibu: 85, brewery_id: 2) }
  let(:beer3) { Beer.new(name: 'Beer 3', id: 3, abv: 9.6, ibu: 93, brewery_id: 3) }
  subject(:beer) { Beer.new(id: 0) }


  describe '#get_random' do
    before do
      allow(Beer).to receive(:count).and_return(4)
      allow(Beer).to receive(:find).with(0).and_return(beer)
      allow(Beer).to receive(:find).with(1).and_return(beer1)
      allow(Beer).to receive(:find).with(2).and_return(beer2)
      allow(Beer).to receive(:find).with(3).and_return(beer3)
    end
    it 'should retrieve a random beer' do
      expect(Beer.random).to be_a Beer
    end
  end
end
