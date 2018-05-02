class RecommendedBeersController < ApplicationController
  before_action :set_beer

  def index
    recommended_beers

    render jsonapi: @beers, fields: { beers: %i[ibu abv name] }
  end

  private

  def recommended_beers
    @beers = []
    3.times do
      @beers << Beers::Recommender.new(@beer, @beers.last).call()
    end
  end

  def set_beer
    @beer = Beer.find(params[:beer_id])
  end
end
