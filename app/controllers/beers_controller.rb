class BeersController < ApplicationController

  def index
    @beers = Beer.all
    options = {}

    options[:meta] = { total: Beer.count }
    render json: BeerSerializer.new(@beers, options)
  end

  def show
    @beer = Beer.find(params[:id])

    render json: BeerSerializer.new(@beer)
  end
end
