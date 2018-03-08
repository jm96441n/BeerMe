class BeersController < ApplicationController

  def index
    @beers = Beer.all
    options = {}

    options[:meta] = { total: Beer.count }
    render json: BeerSerializer.new(@beers, options)
  end
end
