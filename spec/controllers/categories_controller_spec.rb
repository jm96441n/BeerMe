require 'rails_helper'

describe CategoriesController, type: :controller do
  let(:irish_ale) { double('Category', name: 'Irish Ale', id: 1, beer_style_ids: [1,2,3]) }
  let(:brit_ale) { double('Category', name: 'British Ale', id: 2, beer_style_ids: [4,5,6]) }
  let(:categories) { [irish_ale, brit_ale] }

  context '#index' do
    before do
      allow(Category).to receive(:all).and_return(categories)
    end

    it 'returns a json array of the categories' do
      get :index, format: :json

      body   = json(response.body)

      expect(response).to be_success
      expect(body.length).to eql 2
    end

    it 'returns the name of the categories' do
      get :index, format: :json

      body   = json(response.body)
      first  = body['data'][0]['attributes']
      second = body['data'][1]['attributes']

      expect(first['name']).to eql irish_ale.name
      expect(second['name']).to eql brit_ale.name
    end

    it 'returns the id of the categories' do
      get :index, format: :json

      body   = json(response.body)

      first  = body['data'][0]['attributes']
      second = body['data'][1]['attributes']

      expect(first['id']).to eql irish_ale.id
      expect(second['id']).to eql brit_ale.id
    end
  end
end
