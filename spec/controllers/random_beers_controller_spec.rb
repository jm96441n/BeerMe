require 'rails_helper'

RSpec.describe RandomBeersController, type: :controller do
  let(:beer1) { Beer.new(name: 'Beer 1', id: 1, abv: 6.7, ibu: 92, brewery_id: 1) }
  let(:beer2) { Beer.new(name: 'Beer 2', id: 2, abv: 4.5, ibu: 85, brewery_id: 2) }
  let(:beer3) { Beer.new(name: 'Beer 3', id: 3, abv: 9.6, ibu: 93, brewery_id: 3) }

  describe '#show' do
    before(:each) do
      get :show, format: :json
      @body = response.body
    end

    it 'returns a 200' do
      expect(response).to be_success
    end

    xit 'should return a random beer' do

    end
  end
end
