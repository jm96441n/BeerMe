class RandomBeersController < ApplicationController

  def show
    @beer = Beer.random
    render json: Beers::ShowSerializer.new(@beer)
  end
end
