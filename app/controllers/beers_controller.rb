class BeersController < ApplicationController
  include Rails::Pagination

  before_action :get_beer, only: :show
  def index
    @beers = paginate filtered_beers
    render jsonapi: @beers,
           fields: { beers: %i[ibu abv name id brewery_name beer_style] },
           meta: { current_page: params[:page].to_i, last_page: @beers.total_pages }
  end

  def show
    render jsonapi: @beer
  end

  private

  # Returns the beer to be shown
  def get_beer
    @beer = Beer.find(params[:id])
  end

  # Returns an AR relation
  def filtered_beers
    if params['name'].strip.empty?
      Beer.includes(:brewery, :beer_style).all
    else
      Beer.includes(:brewery, :beer_style).search_by_name(params['name'])
    end
  end
end
