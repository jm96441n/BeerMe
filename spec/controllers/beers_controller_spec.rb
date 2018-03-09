require 'rails_helper'

RSpec.describe BeersController, type: :controller do
  let(:beer1) { Beer.new(name: 'Beer 1', id: 1, abv: 6.7, ibu: 92, brewery_id: 1) }
  let(:beer2) { Beer.new(name: 'Beer 2', id: 2, abv: 4.5, ibu: 85, brewery_id: 2) }
  let(:beer3) { Beer.new(name: 'Beer 3', id: 3, abv: 9.6, ibu: 93, brewery_id: 3) }
  let(:beers) { [beer1, beer2, beer3] }

  before do
    allow(Beer).to receive(:all).and_return(beers)
    allow(Beer).to receive(:count).and_return(beers.count)
  end

  describe '#index' do
    before(:each) do
      get :index, format: :json
      @body = json(response.body)
    end
    it 'returns a 200' do
      expect(response).to be_success
    end

    it 'returns a list of all the beers' do
      expect(@body['meta_tags']['total']).to eql 3
    end

    it 'returns the names for all the beers' do
      names = @body['records'].collect { |record| record['name'] }
      expect(names).to eql ['Beer 1', 'Beer 2', 'Beer 3']
    end

    it 'returns the ids for all the beers' do
      names = @body['records'].collect { |record| record['id'] }
      expect(names).to eql [1, 2, 3]
    end

    it 'returns the abvs for all the beers' do
      names = @body['records'].collect { |record| record['abv'] }
      expect(names).to eql [6.7, 4.5, 9.6]
    end

    it 'returns the ids for all the beers' do
      names = @body['records'].collect { |record| record['ibu'] }
      expect(names).to eql [92, 85, 93]
    end
  end

  describe '#show' do
    before(:each) do
      get :show, params: { id: 1 }, format: :json
      @body = json(response.body)
    end
    it 'returns a 200' do
      expect(response).to be_success
    end

    it 'returns the selected beer' do
      beer = @body['record']

      expect(beer['name']).to eq('Beer 1')
      expect(beer['abv']).to eq('Beer 6.7')
      expect(beer['ibu']).to eq('92')
    end
  end
end
