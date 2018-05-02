class RecommendedBeersController < ApplicationController
  before_action :set_beer

  def index
    recommended_beers

    render jsonapi: @beers, fields: { beers: %i[ibu abv name id] }
  end

  private

  def recommended_beers
    @beers = []
    3.times do
      service = Beers::Recommender.new(@beer, @beers)
      result = service.call
      @beers << result.model
    end
  end

  def set_beer
    @beer = Beer.find(params[:beer_id].to_i)
  end
end
