require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  it 'renders the index page' do
    get :index
  end
end
