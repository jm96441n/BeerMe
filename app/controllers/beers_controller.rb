class BeersController < ApplicationController
  include Rails::Pagination

  before_action :get_beer, only: :show
  def index
    @beers = paginate Beer.all

    render jsonapi: @beers, fields: { beers: %i[ibu abv name] }, meta: { current_page: params[:page].to_i, last_page: @beers.total_pages }
  end

  def show
    render jsonapi: @beer
  end

  private

  def get_beer
    @beer = Beer.find(params[:id])
  end
end
