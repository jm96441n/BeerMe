class RandomBeersController < ApplicationController

  def show
    @beer = Beer.random
    render json: BeerSerializer.new(@beer)
  end
end
