require 'rails_helper'

RSpec.describe BeersController, type: :controller do
  let(:beer1) { Beer.new() }
  let(:beer2) { Beer.new() }
  let(:beer3) { Beer.new() }

  describe '#index' do
    before(:each) do
      get :index, format: :json
    end
    it 'returns a 200' do
      expect(response).to be_success
    end

    it 'returns a list of all the beers' do
      body = json(response.body)
      expect(body['count']).to eql 2
    end
  end
end
