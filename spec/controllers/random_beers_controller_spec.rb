require 'rails_helper'

RSpec.describe RandomBeersController, type: :controller do
  let(:beer1) do
    Beer.new(
      name: 'Beer 1',
      id: 1,
      abv: 6.7,
      ibu: 92,
      brewery_id: 1,
      category_id: 1
    )
  end

  describe '#show' do
    before(:each) do
      allow(Beer).to receive(:random).and_return(beer1)
      get :show, format: :json
      @body = json(response.body)
    end

    it 'returns a 200' do
      expect(response).to be_success
    end

    it 'should return a random beer' do
      returned_beer = @body['record']

      expect(returned_beer['name']).to eq(beer1.name)
      expect(returned_beer['abv']).to eq(beer1.abv)
      expect(returned_beer['ibu']).to eq(beer1.ibu)
      expect(returned_beer['name']).to eq(beer1.name)
    end
  end
end
