class RandomBeersController < ApplicationController
  def show
    result = Beers::Randomize.new().call()
    if result.success?
      render jsonapi: result.model
    end
  end
end
